package com.jetflow.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jetflow.entity.SysUser;
import com.jetflow.util.SingletonLoginUtils;


@Controller
@RequestMapping("/admin/main")
public class MainController extends BaseController{

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	private static String mainPage = getViewPath("/admin/main/main");//后台管理主界面
	private static String mainIndexPage = getViewPath("/admin/main/index");//后台操作中心初始化首页
	
	
	/**
	 * 进入操作中心
	 * @param request
	 * @return ModelAndView
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping()
	public ModelAndView mainPage(HttpServletRequest request){
		ModelAndView model = new ModelAndView();
		try{
			SysUser sysuser = SingletonLoginUtils.getLoginSysUser(request);
			model.setViewName(mainPage);
			model.addObject("sysuser", sysuser);
		}catch (Exception e) {
			model.setViewName(this.setExceptionRequest(request, e));
			logger.error("mainPage()--error",e);
		}
		return model;
	}
	
	
	/**
	 * 后台操作中心初始化首页
	 * @param request
	 * @return ModelAndView
	 */
	@RequestMapping("/index")
	public ModelAndView mainIndex(HttpServletRequest request){
		ModelAndView model = new ModelAndView();
		try{
			model.setViewName(mainIndexPage);
			
		}catch (Exception e) {
			model.setViewName(this.setExceptionRequest(request, e));
			logger.error("mainIndex()---error",e);
		}
		return model;
	}
}