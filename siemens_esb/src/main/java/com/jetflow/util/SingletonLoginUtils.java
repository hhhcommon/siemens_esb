package com.jetflow.util;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;

import com.inxedu.os.common.cache.EHCacheUtil;
import com.inxedu.os.common.util.ObjectUtils;
import com.jetflow.common.constants.CacheConstans;
import com.jetflow.entity.SysUser;

/**
 * @author www.inxedu.com
 *
 */
public class SingletonLoginUtils {
	
	/**
	 * 
	 * 获取后台登录用户ID
	 * @param request
	 * @return 返因用户ID
	 */
	public static int getLoginSysUserId(HttpServletRequest request) {
		SysUser useObject = getLoginSysUser(request);
		if (ObjectUtils.isNotNull(useObject)) {
			return useObject.getUserId();
		} else {
			return 0;
		}
	}

	/**
	 * 获取后台登录用户
	 * @return SysUser
	 * @throws Exception
	 */
	public static SysUser getLoginSysUser(HttpServletRequest request) {
		String userKey = WebUtils.getCookie(request, CacheConstans.LOGIN_MEMCACHE_PREFIX);
		if (StringUtils.isNotEmpty(userKey)) {
			SysUser sysUser = (SysUser) EHCacheUtil.get(userKey);
			if (ObjectUtils.isNotNull(sysUser)) {
				return sysUser;
			}
		}
		return null;
	}
	
}
