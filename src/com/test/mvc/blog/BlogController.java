package com.test.mvc.blog;

import com.jfinal.aop.Before;
import com.platform.annotation.Controller;
import com.platform.constant.ConstantInit;
import com.platform.mvc.base.BaseController;
import org.apache.log4j.Logger;

/**
 * XXX 管理	
 * 描述：
 * 
 * /jf/test/blog
 * /jf/test/blog/save
 * /jf/test/blog/edit
 * /jf/test/blog/update
 * /jf/test/blog/view
 * /jf/test/blog/delete
 * /common/blog/add.html
 * 
 */
@Controller(controllerKey = "/jf/test/blog")
public class BlogController extends BaseController {

	@SuppressWarnings("unused")
	private static Logger log = Logger.getLogger(BlogController.class);
	
	private BlogService blogService;
	
	/**
	 * 列表
	 */
	public void index() {
		paging(ConstantInit.db_dataSource_main, splitPage, Blog.sqlId_splitPageSelect, Blog.sqlId_splitPageFrom);
		render("/test/blog/list.html");
	}
	
	/**
	 * 保存
	 */
	@Before(BlogValidator.class)
	public void save() {
		getModel(Blog.class).save();
		//render("/test/blog/add.html");
		redirect("/jf/test/blog");
	}
	
	/**
	 * 准备更新
	 */
	public void edit() {
		Blog blog = Blog.dao.findById(getPara());
		setAttr("blog", blog);
		render("/test/blog/update.html");
	}
	/**
	 * 更新
	 */
	@Before(BlogValidator.class)
	public void update() {
		getModel(Blog.class).update();
		redirect("/jf/test/blog");

	}

	/**
	 * 查看
	 */
	public void view() {
		Blog blog = Blog.dao.findById(getPara());
		setAttr("blog", blog);
		render("/test/blog/view.html");
	}
	
	/**
	 * 删除
	 */
	public void delete() {
		blogService.baseDelete("test_blog", getPara() == null ? ids : getPara());
		redirect("/jf/test/blog");
	}
	
}
