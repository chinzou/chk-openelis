package us.mn.state.health.lims.dashboard.util;

import org.apache.log4j.Logger;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import us.mn.state.health.lims.dashboard.valueholder.Order;

import java.io.File;
import java.io.FileReader;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class OrderComparator implements Comparator<Order> {
    private static Map<String, Long> priorityMap = new HashMap<>();
    private static String CONFIG_PATH = "/var/www/bahmni_config/openelis/app.json";
    private static Logger logger = Logger.getLogger(OrderComparator.class);

    public static Map<String, Long> getPriorityMap(){
        return priorityMap;
    }

    protected static void setConfigPath(String configPath){
        CONFIG_PATH = configPath;
    }

    public OrderComparator() throws Exception {
        priorityMap = new HashMap<>();
        JSONParser parser = new JSONParser();
        File file = new File(CONFIG_PATH);
        if (file.exists()) {
            FileReader configReader = new FileReader(file);
            Object obj = parser.parse(configReader);
            configReader.close();
            JSONObject jsonObject = (JSONObject) obj;
            JSONObject labPriority = (JSONObject) jsonObject.get("labPriority");
            if (labPriority != null) {
                for (Object key : labPriority.keySet()) {
                    try {
                        priorityMap.put((String) key, (Long) labPriority.get(key));
                    } catch (ClassCastException ex) {
                        logger.error("Unable to parse config value" + labPriority.get(key), ex);
                    }
                }
            }
        }
    }

    @Override
    public int compare(Order order1, Order order2) {
        int completionStatusDiff = compareCompletionStatus(order1, order2);
        if (completionStatusDiff == 0) {
            int priorityDiff = comparePriority(order1, order2);
            return priorityDiff == 0 ? compareEnteredDate(order1, order2) : priorityDiff;
        }
        return completionStatusDiff;
    }

    private int compareCompletionStatus(Order order1, Order order2) {
        return order1.getIsCompleted() == order2.getIsCompleted() ? 0 : order1.getIsCompleted() ? 1 : -1;
    }

    private int comparePriority(Order order1, Order order2) {
        Long order1Priority = priorityMap.get(order1.getPriority());
        Long order2Priority = priorityMap.get(order2.getPriority());
        order1Priority = order1Priority != null ? order1Priority : (int) Integer.MAX_VALUE;
        order2Priority = order2Priority != null ? order2Priority : (int) Integer.MAX_VALUE;
        return order1Priority.compareTo(order2Priority);
    }

    private int compareEnteredDate(Order order1, Order order2) {
        Date order1EnteredDate = order1.getEnteredDate();
        Date order2EnteredDate = order2.getEnteredDate();
        return (null != order1EnteredDate && null != order2EnteredDate) ? order1EnteredDate.compareTo(order2EnteredDate) : 0;
    }

}
