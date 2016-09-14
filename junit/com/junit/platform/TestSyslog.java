package com.junit.platform;

import com.junit.TestBase;
import com.platform.mvc.syslog.SysLogService;
import com.platform.plugin.ServicePlugin;
import org.junit.Test;

public class TestSyslog extends TestBase {
	
	@Test
    public void deleteSysLog() {
		System.out.println("==============");
		SysLogService slService = (SysLogService) ServicePlugin.getService(SysLogService.serviceName);
		slService.baseDelete("pt_syslog", "11f7e84fb9694c94ac3563b8b02f73f8,0fd1521c13ce4e91bcba5caf6bdcc5d1");
		System.out.println("==============");
    }

}
