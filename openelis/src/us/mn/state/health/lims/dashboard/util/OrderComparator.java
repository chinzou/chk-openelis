package us.mn.state.health.lims.dashboard.util;

import org.apache.log4j.Logger;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import us.mn.state.health.lims.dashboard.valueholder.Order;

import java.io.File;
import java.io.FileReader;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;



/**
 * Created by dreddy on 11/2/17.
 */
public class OrderComparator implements Comparator<Order> {
    public static Map<String, Long> priorityMap = new HashMap<>();
    private final String CONFIG_PATH = "/var/www/bahmni_config/openelis/app.json";
    private static Logger logger = Logger.getLogger(OrderComparator.class);

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
            if(labPriority!=null) {
                for (Object key : labPriority.keySet()) {
                    try {
                        priorityMap.put((String) key, (Long) labPriority.get(key));
                    }catch (ClassCastException ex){
                        logger.error("Unable to parse config value"+labPriority.get(key),ex);
                    }
                }
            }
        }
    }

    @Override
    public int compare (Order o1, Order o2){
        Long order1Priority = priorityMap.get(o1.getComments());
        Long order2Priority = priorityMap.get(o2.getComments());
        order1Priority = order1Priority != null ? order1Priority : (int) Integer.MAX_VALUE;
        order2Priority = order2Priority != null ? order2Priority : (int) Integer.MAX_VALUE;

        return order1Priority.intValue() - order2Priority.intValue();
    }

}
