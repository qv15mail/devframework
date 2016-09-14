package com.platform.mvc.grouprole;

import org.apache.log4j.Logger;

import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

public class GroupRoleValidator extends Validator {

	@SuppressWarnings("unused")
	private static Logger log = Logger.getLogger(GroupRoleValidator.class);
	
	protected void validate(Controller controller) {
		String actionKey = getActionKey();
		if (actionKey.equals("/platform/groupRole/save")){
			// validateString("username", 6, 30, "usernameMsg", "请输入登录账号!");
			
		} else if (actionKey.equals("/platform/groupRole/update")){
			
		}
	}
	
	protected void handleError(Controller controller) {
		controller.keepModel(GroupRole.class);
		
		String actionKey = getActionKey();
		if (actionKey.equals("/platform/groupRole/save")){
			controller.render("/platform/xxx.html");
		
		} else if (actionKey.equals("/platform/groupRole/update")){
			controller.render("/platform/xxx.html");
		
		}
	}
	
}
