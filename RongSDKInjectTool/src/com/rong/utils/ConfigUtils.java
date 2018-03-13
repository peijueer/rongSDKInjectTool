/**   
 * @Title: ConfigUtils.java 
 * @Package com.rong.utils 
 * @Description: TODO(用一句话描述该文件做什么) 
 * @author peijueer   
 * @date 2018-1-31 下午4:57:43 
 * @version V1.0   
 */
package com.rong.utils;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import com.rong.bean.ChannelBean;

public class ConfigUtils {
	public static String ROOTPATH = new File("").getAbsolutePath();
	public static String tmpPath = ROOTPATH + File.separator + "out" + File.separator + "raw";
	public static String signApkPath = ROOTPATH + File.separator + "out";
	public static String apkPath = "";
	public static String apkName = "";
	public static String keyPath = ROOTPATH + File.separator + "key" + File.separator + "online.keystore";
	public static boolean isApktoolVersionSupport = false;
	public static boolean isLand = true;
	public static List<ChannelBean> channals = new ArrayList<ChannelBean>();
	public static String keyPassword = "muzhiwan520";
	public static String alias = "mzwonline";
	public static List<String> apktoolNames = new ArrayList<String>();
	public static int threadPoolCount = 1;
	public static String jarSignerPath = ROOTPATH + "/jdk1.7.0_40/bin/";
	public static boolean unpackFlag = false;
	public static boolean copySrcFlag = false;
	public static boolean copyResFlag = false;
	public static boolean modifyFlag = false;
	public static boolean packFlag = false;
	public static boolean signFlag = false;

	static {
		apktoolNames.add("apktool_2210.jar");
		apktoolNames.add("apktool_2110.jar");
		apktoolNames.add("apktool_2004.jar");
		apktoolNames.add("apktool_2003.jar");
		apktoolNames.add("apktool_2000.jar");
		apktoolNames.add("apktool_1530.jar");
	}
}
