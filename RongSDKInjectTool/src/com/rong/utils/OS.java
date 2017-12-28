/**   
 * @Title: OS.java 
 * @Package com.rong.utils 
 * @Description: TODO(用一句话描述该文件做什么) 
 * @author peijueer   
 * @date 2017-12-25 上午11:25:23 
 * @version V1.0   
 */
package com.rong.utils;

/**
 * @ClassName: OS
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author peijueer
 * @date 2017-12-25 上午11:25:23
 * 
 */
public class OS {
	/**
	 * 
	* @Title: exec 
	* @Description: TODO(这里用一句话描述这个方法的作用) 
	* @param @param cmd			命令
	* @param @param encoding    指定编码
	* @return void    返回类型 
	* @throws
	 */
	public static void exec(String cmd, String encoding) {
		Process process = null;
		try {
			process = Runtime.getRuntime().exec(cmd);
		} catch (Exception e) {
		}

	}
}
