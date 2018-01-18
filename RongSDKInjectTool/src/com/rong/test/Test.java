/**   
 * @Title: Test.java 
 * @Package test 
 * @Description: TODO(用一句话描述该文件做什么) 
 * @author peijueer   
 * @date 2017-12-25 上午10:02:10 
 * @version V1.0   
 */
package com.rong.test;

import com.rong.bean.ChannelBean;
import com.rong.utils.ToolUtils;

/**
 * @ClassName: Test
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author peijueer
 * @date 2017-12-25 上午10:02:10
 * 
 */
public class Test {
	public static void main(String[] args) {
		String apkPath = "D:/wangzhixin/RongheSDK/signer/channelmzw.apk";
		ToolUtils.unPackAPk(apkPath);
		try {
			Thread.sleep(8000);
		} catch (Exception e) {
		}
		ChannelBean channelBean = new ChannelBean();
		channelBean.setChannelName("iqiyi");

		ToolUtils.copySrcForChannel(channelBean);
		ToolUtils.copyChannelResourceForSrc(channelBean);
		ToolUtils.modifyFileForChannel(true, channelBean);
		ToolUtils.pack(channelBean);
		try {
			Thread.sleep(10000);
		} catch (Exception e) {
		}
		ToolUtils.sign(channelBean, "channelmzw");
	}
}
