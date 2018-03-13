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
import java.util.ArrayList;
import java.util.List;

import com.rong.bean.ChannelBean;

/**
 * @ClassName: ToolUtils
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author peijueer
 * @date 2017-12-25 上午10:08:06
 * 
 */
public class ToolUtils {
	private static final String CACHEFILENAME = "smaliTemp";
	public static final String DIR_ASSETS = "assets";
	public static final String DIR_LIB = "lib";
	public static final String DIR_LIB_ARMEABI = "lib/armeabi";
	public static final String DIR_LIB_ARMEABIV7A = "lib/armeabi-v7a";
	public static final String DIR_LIB_ARM64V8A = "lib/arm64-v8a";
	public static final String DIR_LIB_MIPS = "lib/mips";
	public static final String DIR_LIB_MIPS64 = "lib/mips64";
	public static final String DIR_LIB_X86 = "lib/x86";
	public static final String DIR_LIB_X8664 = "lib/x86_64";
	public static final String DIR_RES = "res";
	public static final String DIR_RES_VALUES = "res/values";
	public static final String DIR_SMALI = "smali";
	public static final String DIR_UNKNOWN = "unknown";
	public static final String ANDROIDMANIFEST = "AndroidManifest.xml";
	public static final String PUBLIC = "public.xml";
	public static final String USESPERMISSION = "uses-permission";
	public static final String COMPONENTSLANDSCAPE = "components_landscape";
	public static final String COMPONENTSDEFAULT = "components_default";
	public static final String SPLASH_LAND = "splash_land.jpg";
	public static final String SPLASH_PROT = "splash_prot.jpg";
	public static final String SPLASH_DEST = "res/drawable-hdpi/splash.jpg";
	public static final String SPLASH_OLD = "res/drawable-hdpi/splash.png";
	public static final String TOOLNAME = "apktool_2210.jar";

	private static String smaliTempPath = ConfigUtils.ROOTPATH + "/smaliTemp";

	/**
	 * @Title: clearCache
	 * @Description: 清理上次打包产生的缓存内容
	 * @return void 返回类型
	 * @throws
	 */
	public static void clearCache() {
		File rootFile = new File(ConfigUtils.ROOTPATH);
		File[] files = rootFile.listFiles();
		for (File file : files) {
			if (file.getName().contains(CACHEFILENAME)) {
				System.out.println("正在清理缓存文件：" + file.getName());
				FileUtils.rmdir(file);
			}
		}
	}

	/**
	 * 拆包
	 * 
	 * @Title: unPackAPk
	 * @Description: TODO(这里用一句话描述这个方法的作用)
	 * @param @param apkPath 设定文件
	 * @return void 返回类型
	 * @throws
	 */
	public static void unPackAPk(String apkPath) {
		// String cmd = "java -jar " + ConfigUtils.ROOTPATH + "/tools/" +
		// TOOLNAME + " d -f \"" + apkPath + "\" -o \"" + smaliTempPath + "\"";
		// System.out.println("unPackAPk cmd--->" + cmd);
		List<String> list = new ArrayList<String>();
		list.add(" java ");
		list.add("-jar ");
		list.add(ConfigUtils.ROOTPATH + "/tools/" + TOOLNAME);
		list.add(" d ");
		list.add(" -f ");
		list.add("\"" + apkPath + "\"");
		list.add(" -o ");
		list.add("\"" + smaliTempPath + "\"");
		try {
			OS.exec((String[]) list.toArray(new String[0]));
			System.out.println("反编译结束");
		} catch (Throwable localThrowable) {
			System.out.println("反编译出错了");
		}
	}

	/**
	 * 打包
	 * 
	 * @Title: pack
	 * @Description: TODO(这里用一句话描述这个方法的作用)
	 * @param @param channelBean 设定文件
	 * @return void 返回类型
	 * @throws
	 */
	public static void pack(ChannelBean channelBean) {
		String cmd = "java -jar " + ConfigUtils.ROOTPATH + "/tools/" + TOOLNAME + " b \"" + smaliTempPath + "_" + channelBean.getChannelId() + "\"";
		System.out.println("pack cmd--->" + cmd);
		List<String> list = new ArrayList<String>();
		list.add(" java ");
		list.add("-jar ");
		list.add(ConfigUtils.ROOTPATH + "/tools/" + TOOLNAME);
		list.add(" b ");
		list.add("\"" + smaliTempPath + "_" + channelBean.getChannelId() + "\"");
		try {
			OS.exec((String[]) list.toArray(new String[0]));
			System.out.println("回编译结束");
		} catch (Throwable localThrowable) {
			System.out.println("回编译出错了");
		}
	}

	/**
	 * 签名
	 * 
	 * @Title: sign
	 * @Description: TODO(这里用一句话描述这个方法的作用)
	 * @param @param channelBean
	 * @param @param apkName 设定文件
	 * @return void 返回类型
	 * @throws
	 */
	public static void sign(ChannelBean channelBean, String apkName) {
		String apkFile = ConfigUtils.ROOTPATH + "/" + apkName;
		File file = new File(apkFile);
		if (!file.exists()) {
			file.mkdirs();
		}
		String cmd = "jarsigner -verbose  -keystore " + ConfigUtils.ROOTPATH + "/tools/online.keystore -storepass muzhiwan520 -keypass muzhiwan520 -signedjar " + apkFile + "/" + apkName + "_" + channelBean.getChannelId() + ".apk " + ConfigUtils.ROOTPATH + "/smaliTemp_" + channelBean.getChannelId() + "/dist/" + apkName + ".apk" + " mzwonline -digestalg SHA1 -sigalg SHA1withRSA -tsa http://timestamp.digicert.com";
		System.out.println("sign cmd--->" + cmd);
		List<String> list = new ArrayList<String>();
		list.add("jarsigner -verbose  -keystore ");
		list.add(ConfigUtils.ROOTPATH + "/tools/online.keystore -storepass muzhiwan520 -keypass muzhiwan520 -signedjar ");
		list.add(apkFile + "/" + apkName + "_" + channelBean.getChannelId() + ".apk ");
		list.add(ConfigUtils.ROOTPATH + "/smaliTemp_" + channelBean.getChannelId() + "/dist/" + apkName + ".apk");
		list.add(" mzwonline -digestalg SHA1 -sigalg SHA1withRSA -tsa http://timestamp.digicert.com");
		try {
			OS.exec((String[]) list.toArray(new String[0]));
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
		FileUtils.dirsCopy(smaliTempPath, smaliTempPath + "_" + channelBean.getChannelId());
	}

	public static void copyChannelResourceForSrc(ChannelBean channelBean) {
		copyAssets(channelBean);
		copyLibs(channelBean);
		copyRes(channelBean);
		copySmali(channelBean);
		copyUnknown(channelBean);
	}

	public static void replaceSplash(ChannelBean channelBean) {
		String srcFilePath = ConfigUtils.ROOTPATH + "/channelresource/" + channelBean.getChannelId() + "/" + (ConfigUtils.isLand ? SPLASH_LAND : SPLASH_PROT);
		String destFilePath = smaliTempPath + "_" + channelBean.getChannelId() + "/" + SPLASH_DEST;
		System.out.println("srcFilePath-->" + srcFilePath + ";destFilePath-->" + destFilePath);
		String oldSplashPath = smaliTempPath + "_" + channelBean.getChannelId() + "/" + SPLASH_OLD;
		if(new File(srcFilePath).exists()){
			FileUtils.rmdir(oldSplashPath);
			FileUtils.fileCopy(srcFilePath, destFilePath);
		}
	}

	public static void modifyFileForChannel(ChannelBean channelBean) {
		if (channelBean.getChannelId().equals("mzw")) {
			changePackageName(channelBean);
		} else {
			replaceSplash(channelBean);
			modifyAndroidManifest(channelBean);
			modifyPublic(channelBean);
		}
	}

	public static void copyResourceForChannel(String channelBeanId, String type) {
		FileUtils.dirsCopy(ConfigUtils.ROOTPATH + "/channelresource/" + channelBeanId + "/" + type, smaliTempPath + "_" + channelBeanId + "/" + type);
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
		copyLibs(channelBean.getChannelId(), DIR_LIB_ARMEABI);
		copyLibs(channelBean.getChannelId(), DIR_LIB_ARMEABIV7A);
		copyLibs(channelBean.getChannelId(), DIR_LIB_ARM64V8A);
		copyLibs(channelBean.getChannelId(), DIR_LIB_MIPS);
		copyLibs(channelBean.getChannelId(), DIR_LIB_MIPS64);
		copyLibs(channelBean.getChannelId(), DIR_LIB_X86);
		copyLibs(channelBean.getChannelId(), DIR_LIB_X8664);
	}

	public static void copyLibs(String channelBeanId, String soPath) {
		String destPath = smaliTempPath + "_" + channelBeanId + "/" + soPath;
		File destFile = new File(destPath);
		if (destFile.exists()) {
			copyResourceForChannel(channelBeanId, soPath);
		}
		checkLibs(channelBeanId);
	}

	public static void checkLibs(String channelBeanId) {
		String destPathArm = smaliTempPath + "_" + channelBeanId + "/" + DIR_LIB_ARMEABI;
		String destPathArmv7 = smaliTempPath + "_" + channelBeanId + "/" + DIR_LIB_ARMEABIV7A;
		String destPathArm64v8 = smaliTempPath + "_" + channelBeanId + "/" + DIR_LIB_ARM64V8A;
		String destPathMips = smaliTempPath + "_" + channelBeanId + "/" + DIR_LIB_MIPS;
		String destPathMips64 = smaliTempPath + "_" + channelBeanId + "/" + DIR_LIB_MIPS64;
		String destPathX86 = smaliTempPath + "_" + channelBeanId + "/" + DIR_LIB_X86;
		String destPathX8664 = smaliTempPath + "_" + channelBeanId + "/" + DIR_LIB_X8664;

		File destFileArm = new File(destPathArm);
		File destFileArmV7 = new File(destPathArmv7);
		File destFileArm64V8 = new File(destPathArm64v8);
		File destFileArmMips = new File(destPathMips);
		File destFileArmMips64 = new File(destPathMips64);
		File destFileArmX86 = new File(destPathX86);
		File destFileArmX8664 = new File(destPathX8664);

		if (!destFileArm.exists() && !destFileArmV7.exists() && !destFileArm64V8.exists() && !destFileArmMips.exists() && !destFileArmMips64.exists() && !destFileArmX86.exists() && !destFileArmX8664.exists()) {
			copyResourceForChannel(channelBeanId, DIR_LIB_ARMEABI);
		}
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

	public static void modifyAndroidManifest(ChannelBean channelBean) {
		changePackageName(channelBean);
		addPermission(channelBean);
		addComponents(channelBean);
	}

	public static void changePackageName(ChannelBean channelBean) {
		Dom4jUtils.changePackageName(smaliTempPath + "_" + channelBean.getChannelId() + "/" + ANDROIDMANIFEST, channelBean);
	}

	public static void addPermission(ChannelBean channelBean) {
		Dom4jUtils.addPermission(smaliTempPath + "_" + channelBean.getChannelId() + "/" + ANDROIDMANIFEST, ConfigUtils.ROOTPATH + "/channelresource/" + channelBean.getChannelId() + "/" + USESPERMISSION, channelBean);
	}

	public static void addComponents(ChannelBean channelBean) {
		Dom4jUtils.addComponents(smaliTempPath + "_" + channelBean.getChannelId() + "/" + ANDROIDMANIFEST, ConfigUtils.ROOTPATH + "/channelresource/" + channelBean.getChannelId() + "/" + (ConfigUtils.isLand ? COMPONENTSLANDSCAPE : COMPONENTSDEFAULT), channelBean);
	}

	public static void modifyPublic(ChannelBean channelBean) {
		Dom4jUtils.modifyPublic(smaliTempPath + "_" + channelBean.getChannelId() + "/" + DIR_RES_VALUES, channelBean);
	}

}
