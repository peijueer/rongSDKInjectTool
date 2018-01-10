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
	private String channelId;
	private String channelName;
	private boolean isSelect;

	public ChannelBean() {

	}

	public ChannelBean(String channelId, String channelName) {
		this.channelId = channelId;
		this.channelName = channelName;
	}

	public String getChannelId() {
		return channelId;
	}

	public void setChannelId(String channelId) {
		this.channelId = channelId;
	}

	public String getChannelName() {
		return channelName;
	}

	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}

	public boolean isSelect() {
		return isSelect;
	}

	public void setSelect(boolean isSelect) {
		this.isSelect = isSelect;
	}

}
