package com.junit;

import com.platform.run.ConfigCore;
import org.apache.log4j.Logger;
import org.junit.BeforeClass;

public class TestBase {

	private static Logger log = Logger.getLogger(TestBase.class);
	
    @BeforeClass
    public static void setUpBeforeClass() throws Exception {
    	log.info("启动ConfigCore start ......");
    	ConfigCore.getSingleton();
    	log.info("启动ConfigCore end ......");
    }

}
