package us.mn.state.health.lims.dashboard.util;

import us.mn.state.health.lims.dashboard.action.DashboardAction;
import us.mn.state.health.lims.dashboard.valueholder.Order;

import java.util.Comparator;


/**
 * Created by dreddy on 11/2/17.
 */
public class OrderComparator implements Comparator<Order> {


    @Override
    public int compare(Order o1, Order o2) {


        Long order1Priority = DashboardAction.priorityMap.get(o1.getComments());
        Long order2Priority = DashboardAction.priorityMap.get(o2.getComments());
        order1Priority=order1Priority!=null?order1Priority:(int) Integer.MAX_VALUE;
        order2Priority=order2Priority!=null?order2Priority:(int) Integer.MAX_VALUE;

        return order1Priority.intValue() - order2Priority.intValue();
    }
}