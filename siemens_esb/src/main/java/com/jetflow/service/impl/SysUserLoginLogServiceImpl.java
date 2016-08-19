package com.jetflow.service.impl;

import com.inxedu.os.common.entity.PageEntity;
import com.jetflow.dao.SysUserLoginLogDao;
import com.jetflow.entity.SysUserLoginLog;
import com.jetflow.service.SysUserLoginLogService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 后台用户登录日志
 * @author www.inxedu.com
 */
@Service("sysUserLoginLogService")
public class SysUserLoginLogServiceImpl implements SysUserLoginLogService{

	@Autowired
	private SysUserLoginLogDao sysUserLoginLogDao;
	
	public int createLoginLog(SysUserLoginLog loginLog) {
		return sysUserLoginLogDao.createLoginLog(loginLog);
	}
	
	public List<SysUserLoginLog> queryUserLogPage(int userId, PageEntity page) {
		return sysUserLoginLogDao.queryUserLogPage(userId, page);
	}

}
