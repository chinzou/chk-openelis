/*
* The contents of this file are subject to the Mozilla Public License
* Version 1.1 (the "License"); you may not use this file except in
* compliance with the License. You may obtain a copy of the License at
* http://www.mozilla.org/MPL/ 
* 
* Software distributed under the License is distributed on an "AS IS"
* basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
* License for the specific language governing rights and limitations under
* the License.
* 
* The Original Code is OpenELIS code.
* 
* Copyright (C) The Minnesota Department of Health.  All Rights Reserved.
*/

package us.mn.state.health.lims.dashboard.action;

import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.json.simple.parser.JSONParser;
import org.json.simple.JSONObject;
import java.io.FileReader;
import org.bahmni.feed.openelis.ObjectMapperRepository;
import us.mn.state.health.lims.common.action.BaseAction;
import us.mn.state.health.lims.dashboard.dao.OrderListDAO;
import us.mn.state.health.lims.dashboard.daoimpl.OrderListDAOImpl;
import us.mn.state.health.lims.dashboard.util.OrderComparator;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DashboardAction extends BaseAction {
    private OrderListDAO orderListDAO = new OrderListDAOImpl();
    public DashboardAction() {
    }

    @Override
    protected ActionForward performAction(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        DynaActionForm dynaForm = (DynaActionForm) form;

        OrderComparator orderComparator = new OrderComparator();
        List allToday = orderListDAO.getAllToday();
        List pendingBeforeToday = orderListDAO.getAllPendingBeforeToday();
        List allSampleNotCollectedToday = orderListDAO.getAllSampleNotCollectedToday();
        List allSampleNotCollectedPendingBeforeToday = orderListDAO.getAllSampleNotCollectedPendingBeforeToday();

        Collections.sort(allToday, orderComparator );
        Collections.sort(pendingBeforeToday,orderComparator);
        Collections.sort(allSampleNotCollectedPendingBeforeToday,orderComparator);
        Collections.sort(allSampleNotCollectedToday,orderComparator);

        String escapedTodayOrderListJson = asJson(allToday);
        String escapedTodaySampleNotCollectedListJson = asJson(allSampleNotCollectedToday);
        String escapedBacklogSampleNotCollectedListJson = asJson(allSampleNotCollectedPendingBeforeToday);
        String escapedBacklogOrderListJson = asJson(pendingBeforeToday);

        dynaForm.set("todayOrderList", escapedTodayOrderListJson);
        dynaForm.set("todaySampleNotCollectedList", escapedTodaySampleNotCollectedListJson);
        dynaForm.set("backlogSampleNotCollectedList", escapedBacklogSampleNotCollectedListJson);
        dynaForm.set("backlogOrderList", escapedBacklogOrderListJson);

        return mapping.findForward("success");
    }

    @Override
    protected String getPageTitleKey() {
        return "Dashboard";
    }

    @Override
    protected String getPageSubtitleKey() {
        return "Dashboard";
    }

    private String asJson(Object o) throws IOException {
        String listJson = ObjectMapperRepository.objectMapper.writeValueAsString(o);
        return StringEscapeUtils.escapeEcmaScript(listJson);
    }
}
