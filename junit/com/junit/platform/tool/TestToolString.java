package com.junit.platform.tool;

import com.junit.TestBase;
import com.platform.tools.ToolString;
import org.junit.Test;

import java.sql.SQLException;

public class TestToolString extends TestBase {
	
	@Test
    public void regExp() throws SQLException{
		for (int i = 0; i < 10; i++) {
			long start = System.currentTimeMillis();
			
			boolean bool = ToolString.regExpVali("12qwAS'", ToolString.regExp_letter_5);
			
			long end = System.currentTimeMillis();
			
			System.out.println(bool + " : " + (end - start));
		}
    }

}
