/**   
 * @Title: ChannelBean.java 
 * @Package com.rong.bean 
 * @Description: TODO(用一句话描述该文件做什么) 
 * @author peijueer   
 * @date 2017-12-25 下午12:08:16 
 * @version V1.0   
 */
package com.rong.bean;

/**
 * @ClassName: ChannelBean
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author peijueer
 * @date 2017-12-25 下午12:08:16
 * 
 */
public class ChannelBean {
	private String channelName;
	private String channelSmaliPath;

	public ChannelBean() {

	}

	public ChannelBean(String channelName, String channelSmaliPath) {
		super();
		this.channelName = channelName;
		this.channelSmaliPath = channelSmaliPath;
	}

	public String getChannelName() {
		return channelName;
	}

	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}

	public String getChannelSmaliPath() {
		return channelSmaliPath;
	}

	public void setChannelSmaliPath(String channelSmaliPath) {
		this.channelSmaliPath = channelSmaliPath;
	}
}
