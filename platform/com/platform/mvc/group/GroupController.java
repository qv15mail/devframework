package com.platform.mvc.group;

import com.jfinal.aop.Before;
import com.platform.annotation.Controller;
import com.platform.mvc.base.BaseController;
import com.platform.mvc.base.BaseModel;
import org.apache.log4j.Logger;

/**
 * 人员分组管理
 * @author 董华健
 */
@SuppressWarnings("unused")
@Controller("/jf/platform/group")
public class GroupController extends BaseController {

	private static Logger log = Logger.getLogger(GroupController.class);
	
	private GroupService groupService;
	
	/**
	 * 分组管理列表
	 */
	public void index() {
		paging(splitPage, BaseModel.sqlId_splitPageSelect, Group.sqlId_splitPageFrom);
		render("/platform/group/list.html");
	}
	
	/**
	 * 保存分组
	 */
	@Before(GroupValidator.class)
	public void save() {
		ids = groupService.save(getModel(Group.class));
		redirect("/jf/platform/group");
	}
	
	/**
	 * 准备更新分组
	 */
	public void edit() {
		setAttr("group", Group.dao.findById(getPara()));
		render("/platform/group/update.html");
	}

	/**
	 * 更新分组
	 */
	@Before(GroupValidator.class)
	public void update() {
		groupService.update(getModel(Group.class));
		redirect("/jf/platform/group");
	}

	/**
	 * 删除分组
	 */
	public void delete() {
		groupService.delete(getPara() == null ? ids : getPara());
		redirect("/jf/platform/group");
	}

}


