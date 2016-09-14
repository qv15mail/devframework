package com.junit.platform.tool;

import com.junit.TestBase;
import com.platform.tools.ToolBeetl;
import org.junit.Test;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class TestToolBeetl extends TestBase {
	
	@Test
    public void makeHtml() throws SQLException{
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("cxt", "123<>");
		
		ToolBeetl.makeHtml("/test.html", paramMap, "d:\\aa.html");
    }

}
