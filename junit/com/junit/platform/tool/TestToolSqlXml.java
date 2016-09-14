package com.junit.platform.tool;

import com.junit.TestBase;
import com.platform.tools.ToolSqlXml;
import org.junit.Test;

import java.sql.SQLException;

public class TestToolSqlXml extends TestBase {
	
	@Test
    public void keywordVali() throws SQLException{
		boolean bool = ToolSqlXml.keywordVali("username");
		System.out.println(bool);
    }

}
