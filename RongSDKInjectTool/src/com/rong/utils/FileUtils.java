/**   
 * @Title: FileUtils.java 
 * @Package com.rong.utils 
 * @Description: TODO(用一句话描述该文件做什么) 
 * @author peijueer   
 * @date 2017-12-25 上午10:01:38 
 * @version V1.0   
 */
package com.rong.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * @ClassName: FileUtils
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author peijueer
 * @date 2017-12-25 上午10:01:38
 * 
 */
public class FileUtils {

	/**
	 * 目录拷贝
	 * 
	 * @Title: dirsCopy
	 * @Description: TODO(这里用一句话描述这个方法的作用)
	 * @param @param dirSrc 拷贝源路径
	 * @param @param dirDes 拷贝目标路径
	 * @return void 返回类型
	 * @throws
	 */
	public static void dirsCopy(String dirSrc, String dirDes) {
		File src = new File(dirSrc);
		if (!src.exists()) {
			return;
		}
		File[] fs = src.listFiles();
		File des = new File(dirDes);
		if (!des.exists()) {
			des.mkdirs();
		}
		for (File file : fs) {
			System.out.println("copy file------->" + file.getAbsolutePath());
			if (file.isFile()) {
				fileCopy(file.getPath(), des + "\\" + file.getName()); // 调用文件拷贝的方法
			} else if (file.isDirectory()) {
				dirsCopy(file.getPath(), des + "\\" + file.getName());
			}
		}

	}

	/**
	 * 文件拷贝
	 * 
	 * @Title: fileCopy
	 * @Description: TODO(这里用一句话描述这个方法的作用)
	 * @param @param fileSrc 拷贝源路径
	 * @param @param fileDes 拷贝目标路径
	 * @return void 返回类型
	 * @throws
	 */
	public static void fileCopy(String fileSrc, String fileDes) {
		File srcFile = new File(fileSrc);
		File destFile = new File(fileDes);
		try {
			if (!srcFile.exists()) {
				srcFile.createNewFile();
			}

			if (!destFile.exists()) {
				destFile.getParentFile().mkdirs();
				destFile.createNewFile();
			}
			InputStream in = new FileInputStream(srcFile);
			OutputStream out = new FileOutputStream(destFile);
			byte[] bytes = new byte[1024];
			int len = 0;
			while ((len = in.read(bytes)) != -1) {
				out.write(bytes, 0, len);
			}
			in.close();
			out.close();
		} catch (Exception e) {

		}
	}

	/**
	 * 删除指定文件夹
	 * 
	 * @Title: rmdir
	 * @Description: TODO(这里用一句话描述这个方法的作用)
	 * @param @param dirFile 指定文件夹
	 * @return void 返回类型
	 * @throws
	 */
	public static void rmdir(File dirFile) {
		if (!dirFile.exists()) {
			return;
		}
		File[] files = dirFile.listFiles();
		for (int i = 0; i < files.length; i++) {
			File file = files[i];
			if (file.isDirectory()) {
				rmdir(file);
			} else {
				try {
					file.delete();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		dirFile.delete();
	}

	/**
	 * 删除指定文件夹
	 * 
	 * @Title: rmdir
	 * @Description: TODO(这里用一句话描述这个方法的作用)
	 * @param @param dirFile 指定文件夹路径
	 * @return void 返回类型
	 * @throws
	 */
	public static void rmdir(String dirString) {
		File dirFile = new File(dirString);
		rmdir(dirFile);
	}

	/**
	 * 
	 * @Title: readFileContent
	 * @Description: 读取文件文本内容
	 * @param @param filePath 文件路径
	 * @param @return 设定文件
	 * @return String 返回类型
	 * @throws
	 */
	public static String readFileContent(String filePath) {
		return readFileContent(new File(filePath));
	}

	/**
	 * 
	 * @Title: readFileContent
	 * @Description: 读取文件文本内容
	 * @param @param file 文件
	 * @param @return 设定文件
	 * @return String 返回类型
	 * @throws
	 */
	public static String readFileContent(File file) {
		String contentStr = "";
		try {
			FileInputStream ins = null;
			if (file.exists()) {
				ins = new FileInputStream(file);
				byte[] buff = new byte[(int) file.length()];
				ins.read(buff);
				contentStr = new String(buff, "UTF-8");
			}
			if (ins != null) {
				try {
					ins.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} catch (Throwable e) {
			contentStr = "";
		}
		return contentStr;
	}
}
