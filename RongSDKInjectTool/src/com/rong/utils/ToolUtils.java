/**   
 * @Title: ToolUtils.java 
 * @Package com.rong.utils 
 * @Description: TODO(用一句话描述该文件做什么) 
 * @author peijueer   
 * @date 2017-12-25 上午10:08:06 
 * @version V1.0   
 */
package com.rong.utils;

import java.io.File;

import com.rong.bean.ChannelBean;

/**
 * @ClassName: ToolUtils
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author peijueer
 * @date 2017-12-25 上午10:08:06
 * 
 */
public class ToolUtils {
	public static final String DIR_ASSETS = "assets";
	public static final String DIR_LIB = "lib";
	public static final String DIR_RES = "res";
	public static final String DIR_RES_VALUES = "res/values";
	public static final String DIR_SMALI = "smali";
	public static final String DIR_UNKNOWN = "unknown";
	public static final String ANDROIDMANIFEST = "AndroidManifest.xml";
	public static final String PUBLIC = "public.xml";
	public static final String USESPERMISSION = "uses-permission";
	public static final String COMPONENTSLANDSCAPE = "components_landscape";
	public static final String COMPONENTSDEFAULT = "components_default";
	public static final String SPLASH_LAND = "splash_land.png";
	public static final String SPLASH_PROT = "splash_prot.png";
	public static final String SPLASH_DEST = "res/drawable-hdpi/splash.png";

	public static String ROOTPATH = new File("").getAbsolutePath();
	private static String smaliTempPath = ROOTPATH + "/smaliTemp";

	public static void unPackAPk(String apkPath) {
		String cmd = "java -jar " + ROOTPATH + "/tools/apktool_2004.jar d -f \"" + apkPath + "\" -o \"" + smaliTempPath + "\"";
		System.out.println("unPackAPk cmd--->" + cmd);
		try {
			OS.exec(cmd, "utf-8");
			System.out.println("反编译结束");
		} catch (Throwable localThrowable) {
			System.out.println("反编译出错了");
		}
	}

	public static void pack(ChannelBean channelBean) {
		String cmd = "java -jar " + ROOTPATH + "/tools/apktool_2004.jar b \"" + smaliTempPath + "(" + channelBean.getChannelId() + ")" + "\"";
		System.out.println("pack cmd--->" + cmd);
		try {
			OS.exec(cmd, "utf-8");
			System.out.println("回编译结束");
		} catch (Throwable localThrowable) {
			System.out.println("回编译出错了");
		}
	}

	public static void sign(ChannelBean channelBean, String apkName) {
		String apkFile = ROOTPATH + "/" + apkName;
		File file = new File(apkFile);
		if (!file.exists()) {
			file.mkdirs();
		}
		String cmd = "jarsigner -verbose  -keystore " + ROOTPATH + "/tools/online.keystore -storepass muzhiwan520 -keypass muzhiwan520 -signedjar " + apkFile + "/" + apkName + "_" + channelBean.getChannelId() + ".apk " + ROOTPATH + "/smaliTemp(" + channelBean.getChannelId() + ")/dist/" + apkName + ".apk" + " mzwonline -digestalg SHA1 -sigalg SHA1withRSA -tsa http://timestamp.digicert.com";
		System.out.println("sign cmd--->" + cmd);
		try {
			OS.exec(cmd, "utf-8");
			System.out.println("签名结束");
		} catch (Throwable localThrowable) {
			System.out.println("签名出错了");
		}
	}

	/**
	 * 为指定渠道拷贝反编译内容
	 * 
	 * @Title: copyResourceForChannel
	 * @Description: TODO(这里用一句话描述这个方法的作用)
	 * @param @param dirSrc 文件源
	 * @param @param channel 渠道号
	 * @return void 返回类型
	 * @throws
	 */
	public static void copySrcForChannel(ChannelBean channelBean) {
		FileUtils.dirsCopy(smaliTempPath, smaliTempPath + "(" + channelBean.getChannelId() + ")");
	}

	public static void copyChannelResourceForSrc(ChannelBean channelBean) {
		copyAssets(channelBean);
		copyLibs(channelBean);
		copyRes(channelBean);
		copySmali(channelBean);
		copyUnknown(channelBean);
	}

	public static void replaceSplash(boolean isLand, ChannelBean channelBean) {
		String srcFilePath = ROOTPATH + "/channelresource/" + channelBean.getChannelId() + "/" + (isLand ? SPLASH_LAND : SPLASH_PROT);
		String destFilePath = smaliTempPath + "(" + channelBean.getChannelId() + ")" + "/" + SPLASH_DEST;
		System.out.println("srcFilePath-->" + srcFilePath + ";destFilePath-->" + destFilePath);
		FileUtils.fileCopy(srcFilePath, destFilePath);
	}

	public static void modifyFileForChannel(boolean isLand, ChannelBean channelBean) {
		if (channelBean.getChannelId().equals("mzw")) {
			changePackageName(channelBean);
		} else {
			replaceSplash(isLand, channelBean);
			modifyAndroidManifest(isLand, channelBean);
			modifyPublic(channelBean);
		}
	}

	public static void copyResourceForChannel(String channelBeanId, String type) {
		FileUtils.dirsCopy(ROOTPATH + "/channelresource/" + channelBeanId + "/" + type, smaliTempPath + "(" + channelBeanId + ")" + "/" + type);
	}

	/**
	 * 拷贝指定渠道相关assets
	 * 
	 * @Title: copyAssets
	 * @Description: TODO(这里用一句话描述这个方法的作用)
	 * @param @param channel 设定文件
	 * @return void 返回类型
	 * @throws
	 */
	public static void copyAssets(ChannelBean channelBean) {
		copyResourceForChannel(channelBean.getChannelId(), DIR_ASSETS);
	}

	public static void copyLibs(ChannelBean channelBean) {
		copyResourceForChannel(channelBean.getChannelId(), DIR_LIB);
	}

	public static void copyRes(ChannelBean channelBean) {
		copyResourceForChannel(channelBean.getChannelId(), DIR_RES);
	}

	public static void copySmali(ChannelBean channelBean) {
		copyResourceForChannel(channelBean.getChannelId(), DIR_SMALI);
	}

	public static void copyUnknown(ChannelBean channelBean) {
		copyResourceForChannel(channelBean.getChannelId(), DIR_UNKNOWN);
	}

	public static void modifyAndroidManifest(boolean isLand, ChannelBean channelBean) {
		changePackageName(channelBean);
		addPermission(channelBean);
		addComponents(isLand, channelBean);
	}

	public static void changePackageName(ChannelBean channelBean) {
		Dom4jUtils.changePackageName(smaliTempPath + "(" + channelBean.getChannelId() + ")/" + ANDROIDMANIFEST, channelBean);
	}

	public static void addPermission(ChannelBean channelBean) {
		Dom4jUtils.addPermission(smaliTempPath + "(" + channelBean.getChannelId() + ")/" + ANDROIDMANIFEST, ROOTPATH + "/channelresource/" + channelBean.getChannelId() + "/" + USESPERMISSION, channelBean);
	}

	public static void addComponents(boolean isLand, ChannelBean channelBean) {
		Dom4jUtils.addComponents(smaliTempPath + "(" + channelBean.getChannelId() + ")/" + ANDROIDMANIFEST, ROOTPATH + "/channelresource/" + channelBean.getChannelId() + "/" + (isLand ? COMPONENTSLANDSCAPE : COMPONENTSDEFAULT), channelBean);
	}

	public static void modifyPublic(ChannelBean channelBean) {
		Dom4jUtils.modifyPublic(smaliTempPath + "(" + channelBean.getChannelId() + ")/" + DIR_RES_VALUES, channelBean);
	}

}
