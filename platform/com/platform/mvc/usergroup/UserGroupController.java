package com.platform.mvc.usergroup;

import com.platform.mvc.user.User;
import org.apache.log4j.Logger;

import com.jfinal.kit.Ret;
import com.platform.annotation.Controller;
import com.platform.mvc.base.BaseController;

/**
 * 用户分组 管理	
 * 描述：
 */
@Controller("/jf/platform/userGroup")
public class UserGroupController extends BaseController {

	@SuppressWarnings("unused")
	private static Logger log = Logger.getLogger(UserGroupController.class);

	private UserGroupService userGroupService;

	/**
	 * 人员分组弹出框
	 */
	public void select(){
		Ret ret = userGroupService.select(ids);
		setAttrs(ret.getData());
		render("/platform/userGroup/select.html");
	}
	
	/**
	 * 添加用户拥有的组
	 */
	public void addGroup(){
		String groupIds = getPara("groupIds");
		userGroupService.addGroup(ids, groupIds);
		//第一次添加用户时并没有用户组，在重新指定用户组时要删除缓存重新建立
		User.cacheRemove(ids);
		User.cacheAdd(ids);
		renderText(ids);
	}
	
	/**
	 * 删除用户拥有的组
	 */
	public void delGroup(){
		userGroupService.delGroup(ids);
		//第一次添加用户时并没有用户组，在重新指定用户组时要删除缓存重新建立
		User.cacheRemove(ids);
		User.cacheAdd(ids);
		renderText(ids);
	}
	
}
