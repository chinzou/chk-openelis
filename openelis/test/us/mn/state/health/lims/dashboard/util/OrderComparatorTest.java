package us.mn.state.health.lims.dashboard.util;

import org.junit.Test;
import us.mn.state.health.lims.dashboard.valueholder.Order;

import java.text.SimpleDateFormat;
import java.util.*;

import static org.junit.Assert.assertEquals;


public class OrderComparatorTest {

    private static final String TEST_CONFIG_PATH = "./openelis/test/resources/app.json";
    private static final SimpleDateFormat SIMPLE_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /**
     * This test is about sort order list as First Come First Serve manner
     * when completion status and priority is same
     *
     * @throws Exception
     */
    @Test
    public void shouldSortOrderListByEnteredDate() throws Exception {
        OrderComparator.setConfigPath(TEST_CONFIG_PATH);
        Order order1 = createOrder("18122017-003", "b4912f35-cf44-45ca-aa85-c1827daecaad",
                "CP170001", "Pat", "One", SIMPLE_DATE_FORMAT.parse("2017-12-18 10:33:45"), "OPD", false, "Sang", "0");
        Order order2 = createOrder("18122017-002", "b4912f35-cf44-45ca-aa85-c1827daecadd",
                "CP170006", "Pat", "Two", SIMPLE_DATE_FORMAT.parse("2017-12-18 10:31:45"), "OPD", false, "Sang", "0");
        Order order3 = createOrder("18122017-004", "b4912f35-cf44-45ca-aa85-c1827daecaed",
                "CP170004", "Pat", "Three", SIMPLE_DATE_FORMAT.parse("2017-12-18 10:32:45"), "OPD", false, "Sang", "0");

        List<Order> orderList = Arrays.asList(order1, order2, order3);
        Collections.sort(orderList, new OrderComparator());

        assertEquals(4, OrderComparator.getPriorityMap().size());
        assertEquals(3, orderList.size());
        assertEquals("18122017-002", orderList.get(0).getAccessionNumber());
        assertEquals("18122017-004", orderList.get(1).getAccessionNumber());
        assertEquals("18122017-003", orderList.get(2).getAccessionNumber());
    }

    /**
     * This test is about sort order list by priority when completion status is same
     *
     * @throws Exception
     */
    @Test
    public void shouldShortOrderListByPriority() throws Exception {
        OrderComparator.setConfigPath(TEST_CONFIG_PATH);
        Order order1 = createOrder("18122017-003", "b4912f35-cf44-45ca-aa85-c1827daecaad",
                "CP170001", "Pat", "One", SIMPLE_DATE_FORMAT.parse("2017-12-18 10:33:45"), "OPD",false, "Sang", "0");
        Order order2 = createOrder("18122017-002", "b4912f35-cf44-45ca-aa85-c1827daecadd",
                "CP170006", "Pat", "Two", SIMPLE_DATE_FORMAT.parse("2017-12-18 10:31:45"), "OPD-High", false, "Sang", "0");
        Order order3 = createOrder("18122017-004", "b4912f35-cf44-45ca-aa85-c1827daecaed",
                "CP170004", "Pat", "Three", SIMPLE_DATE_FORMAT.parse("2017-12-18 10:32:45"), "IPD", false, "Sang", "0");

        List<Order> orderList = Arrays.asList(order1, order2, order3);
        OrderComparator orderComparator = new OrderComparator();
        Collections.sort(orderList, orderComparator);

        assertEquals(4, OrderComparator.getPriorityMap().size());
        assertEquals(3, orderList.size());
        assertEquals("18122017-004", orderList.get(0).getAccessionNumber());
        assertEquals("18122017-002", orderList.get(1).getAccessionNumber());
        assertEquals("18122017-003", orderList.get(2).getAccessionNumber());
    }

    /**
     * This test is about sort order list by completion status.
     * If completion status is same for two order then it will
     * check priority. If priority is also same then it will
     * sort by entered date
     *
     * @throws Exception
     */
    @Test
    public void shouldShortOrderListByCompletionStatus() throws Exception {
        OrderComparator.setConfigPath(TEST_CONFIG_PATH);
        Order order1 = createOrder("18122017-003", "b4912f35-cf44-45ca-aa85-c1827daecaad",
                "CP170001", "Pat", "One", SIMPLE_DATE_FORMAT.parse("2017-12-18 10:33:45"), "OPD", true, "Sang", "1");
        Order order2 = createOrder("18122017-002", "b4912f35-cf44-45ca-aa85-c1827daecadd",
                "CP170006", "Pat", "Two", SIMPLE_DATE_FORMAT.parse("2017-12-18 10:31:45"), "OPD-High", false, "Urine", "0");
        Order order3 = createOrder("18122017-004", "b4912f35-cf44-45ca-aa85-c1827daecaed",
                "CP170004", "Pat", "Three", SIMPLE_DATE_FORMAT.parse("2017-12-18 10:32:45"), "IPD", false, "Sang", "1");
        Order order4 = createOrder("18122017-005", "b4912f35-cf44-45ca-aa85-c1827daecaad",
                "CP170003", "Pat", "Four", SIMPLE_DATE_FORMAT.parse("2017-12-18 10:34:45"), "IPD-High", true, "Sang", "0");

        List<Order> orderList = Arrays.asList(order1, order2, order3, order4);
        OrderComparator orderComparator = new OrderComparator();
        Collections.sort(orderList, orderComparator);

        assertEquals(4, OrderComparator.getPriorityMap().size());
        assertEquals(4, orderList.size());
        assertEquals("18122017-004", orderList.get(0).getAccessionNumber());
        assertEquals("18122017-002", orderList.get(1).getAccessionNumber());
        assertEquals("18122017-005", orderList.get(2).getAccessionNumber());
        assertEquals("18122017-003", orderList.get(3).getAccessionNumber());
    }

    private Order createOrder(String accessionNumber, String uuid, String stNumber, String firstName, String lastName, Date enteredDate, String priority, boolean isCompleted, String sampleType, String comments) {
        return new Order(accessionNumber, uuid, null,
                stNumber, firstName, null, lastName, null, isCompleted,
                false, 1, 1, 1, null,
                enteredDate, comments, null, null, null, sampleType, priority);
    }
}