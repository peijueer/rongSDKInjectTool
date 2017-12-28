/**   
 * @Title: Window.java 
 * @Package views 
 * @Description: TODO(用一句话描述该文件做什么) 
 * @author peijueer   
 * @date 2017-12-28 下午4:35:51 
 * @version V1.0   
 */
package views;

import java.awt.Dimension;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.nio.channels.Channels;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;

import org.apache.log4j.Logger;

import com.rong.bean.ChannelBean;

/**
 * @ClassName: Window
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author peijueer
 * @date 2017-12-28 下午4:35:51
 * 
 */
public class Window extends JFrame implements ActionListener {
	private static final long serialVersionUID = -1189035634361220261L;
	private List<ChannelBean> channels = new ArrayList<ChannelBean>();
	private static Logger logger = Logger.getLogger(Window.class);
	JFrame mainFrame = new JFrame("融合SDK子渠道打包工具v1.0.0");
	JPanel panel = new JPanel();

	JLabel apkPathLabel = new JLabel("apk选择");
	JTextField apkPathText = new JTextField(20);
	JButton apkPathButton = new JButton("...");

	JPanel channelCheckBoxPannel = new JPanel();
	JLabel channelChoseLabel = new JLabel("已勾选子渠道有：");
	JLabel channelChosedLabel = new JLabel("");
	JCheckBox channelCheckBoxAnzhi = new JCheckBox("anzhi");
	JCheckBox channelCheckBoxIqiyi = new JCheckBox("iqiyi");

	public void show() {
		mainFrame.setSize(500, 500);
		mainFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		mainFrame.setResizable(false);
		Toolkit toolKit = Toolkit.getDefaultToolkit();
		Dimension screenSize = toolKit.getScreenSize();
		int screenWidth = screenSize.width / 2;
		int screenHeight = screenSize.height / 2;
		int width = mainFrame.getWidth();
		int height = mainFrame.getHeight();
		initPanel();
		mainFrame.add(panel);
		mainFrame.setLocation(screenWidth - width / 2, screenHeight - height / 2);
		mainFrame.setVisible(true);
	}

	private void initPanel() {
		panel.setLayout(null);
		apkPathLabel.setBounds(10, 20, 75, 25);
		apkPathText.setBounds(75, 20, 240, 25);
		apkPathButton.setBounds(320, 20, 40, 25);
		apkPathButton.addActionListener(this);

		panel.add(apkPathLabel);
		panel.add(apkPathText);
		panel.add(apkPathButton);

		channelChoseLabel.setBounds(10, 50, 110, 25);
		channelChosedLabel.setBounds(130, 50, 300, 25);
		channelCheckBoxAnzhi.setBounds(10, 80, 50, 25);
		channelCheckBoxAnzhi.addActionListener(this);
		channelCheckBoxIqiyi.setBounds(60, 80, 50, 25);
		channelCheckBoxIqiyi.addActionListener(this);

		channelCheckBoxPannel.setBounds(0, 80, 200, 25);
		channelCheckBoxPannel.add(channelCheckBoxAnzhi);
		channelCheckBoxPannel.add(channelCheckBoxIqiyi);

		panel.add(channelChoseLabel);
		panel.add(channelChosedLabel);
		panel.add(channelCheckBoxPannel);

	}

	public File openChoseWindow(int type, String dialogTitle) {
		JFileChooser jfc = new JFileChooser();
		jfc.setFileSelectionMode(type);
		jfc.showDialog(new JLabel(), dialogTitle);
		File file = jfc.getSelectedFile();
		return file;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Window window = new Window();
		window.show();
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if (e.getSource() == apkPathButton) {
			File file = openChoseWindow(JFileChooser.FILES_ONLY, "选择apk文件");
			if (file == null) {
				return;
			}
			apkPathText.setText(file.getAbsolutePath());
		} else if (e.getSource() == channelCheckBoxAnzhi) {
			ChannelBean anzhiChannelBean = new ChannelBean("anzhi", "安智");
			if (channelCheckBoxAnzhi.isSelected()) {
				channels.add(anzhiChannelBean);
			} else {
				removeChannelBeanFromList(channels, anzhiChannelBean);
			}
			getAllChannelFromList(channels);
		} else if (e.getSource() == channelCheckBoxIqiyi) {
			ChannelBean ppsChannelBean = new ChannelBean("iqiyi", "pps");
			if (channelCheckBoxIqiyi.isSelected()) {
				channels.add(ppsChannelBean);
			} else {
				removeChannelBeanFromList(channels, ppsChannelBean);
			}
			getAllChannelFromList(channels);
		}
	}

	private void getAllChannelFromList(List<ChannelBean> channelBeans) {
		String allChannels = "";
		for (ChannelBean channelBean : channelBeans) {
			allChannels += channelBean.getChannelName() + ";";
		}
		if (allChannels.length() > 0) {
			allChannels = allChannels.substring(0, allChannels.length() - 1);
		}
		channelChosedLabel.setText(allChannels);
	}

	private void removeChannelBeanFromList(List<ChannelBean> channelBeans, ChannelBean rChannelBean) {
		for (ChannelBean channelBean : channelBeans) {
			if (channelBean.getChannelId().equals(rChannelBean.getChannelId()) && channelBean.getChannelName().equals(rChannelBean.getChannelName())) {
				channelBeans.remove(channelBean);
				break;
			}
		}
	}
}
