package com.test.mvc.blog;

import com.platform.annotation.Service;
import com.platform.mvc.base.BaseService;
import org.apache.log4j.Logger;

@Service(name = BlogService.serviceName)
public class BlogService extends BaseService {

	@SuppressWarnings("unused")
	private static Logger log = Logger.getLogger(BlogService.class);
	
	public static final String serviceName = "blogService";
	
}
