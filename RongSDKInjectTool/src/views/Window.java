/**   
 * @Title: Window.java 
 * @Package views 
 * @Description: TODO(用一句话描述该文件做什么) 
 * @author peijueer   
 * @date 2017-12-28 下午4:35:51 
 * @version V1.0   
 */
package views;

import java.awt.Component;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.awt.datatransfer.DataFlavor;
import java.awt.dnd.DnDConstants;
import java.awt.dnd.DropTarget;
import java.awt.dnd.DropTargetAdapter;
import java.awt.dnd.DropTargetDropEvent;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

import org.apache.log4j.Logger;

import com.rong.bean.ChannelBean;
import com.rong.utils.FileUtils;

/**
 * @ClassName: Window
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author peijueer
 * @date 2017-12-28 下午4:35:51
 * 
 */
public class Window extends JFrame implements ActionListener {
	private static final long serialVersionUID = -1189035634361220261L;
	private static final String ROOTPATH = new File("").getAbsolutePath();
	private List<ChannelBean> allChannelsList = new ArrayList<ChannelBean>();
	private List<ChannelBean> channels = new ArrayList<ChannelBean>();
	private static Logger logger = Logger.getLogger(Window.class);
	JFrame mainFrame = new JFrame("融合SDK子渠道打包工具v1.0.0");
	JPanel panel = new JPanel();

	JLabel apkPathLabel = new JLabel("apk选择");
	JTextField apkPathText = new JTextField(60);
	JButton apkPathButton = new JButton("...");

	JPanel channelCheckBoxPannel = new JPanel();
	JLabel channelChoseLabel = new JLabel("已勾选子渠道有：");
	JLabel channelChosedLabel = new JLabel("");
	JCheckBox channelCheckBox = null;

	public void show() {
		initChannels();
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

	private void initChannels() {
		String channelsMsgString = FileUtils.readFileContent(ROOTPATH + "/config/channel_config");
		if ("".equals(channelsMsgString)) {
			return;
		}
		String[] channelsArray = channelsMsgString.split("\\|");
		ChannelBean channelBean = null;
		String[] channelMsgArray = null;
		for (String channelMsg : channelsArray) {
			channelMsgArray = channelMsg.split(":");
			channelBean = new ChannelBean(channelMsgArray[0], channelMsgArray[1]);
			allChannelsList.add(channelBean);
		}
	}

	private void initPanel() {
		panel.setLayout(null);
		apkPathLabel.setBounds(10, 20, 75, 25);
		apkPathText.setBounds(75, 20, 300, 25);
		apkPathButton.setBounds(375, 20, 40, 25);
		new DropTarget(apkPathText, DnDConstants.ACTION_COPY_OR_MOVE, new DropTargetAdapter() {

			@Override
			public void drop(DropTargetDropEvent dtde) {
				// TODO Auto-generated method stub
				try {
					dtde.acceptDrop(DnDConstants.ACTION_COPY_OR_MOVE);
					List<File> fileList = (List<File>) dtde.getTransferable().getTransferData(DataFlavor.javaFileListFlavor);
					String fileName = "";
					for (File file : fileList) {
						fileName += file.getAbsolutePath();
					}
					if (fileName.endsWith(".apk")) {
						dtde.dropComplete(true);
						apkPathText.setText(fileName);
					} else {
						JOptionPane.showMessageDialog(null, "文件格式不正确!");
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
		apkPathButton.addActionListener(this);

		panel.add(apkPathLabel);
		panel.add(apkPathText);
		panel.add(apkPathButton);

		channelChoseLabel.setBounds(10, 50, 110, 25);
		channelChosedLabel.setBounds(130, 50, 300, 25);
		channelCheckBoxPannel.setBounds(0, 80, 600, 400);

		int currentX = 10;
		int currentY = 80;
		int width = 50;
		int height = 25;
		ChannelBean channelBean = null;
		for (int i = 0; i < allChannelsList.size(); i++) {
			channelBean = allChannelsList.get(i);
			channelCheckBox = new JCheckBox(channelBean.getChannelName());
			channelCheckBox.setBounds(currentX, currentY, width, height);
			channelCheckBox.addActionListener(this);
			channelCheckBoxPannel.add(channelCheckBox);
			currentX += width;
			if (i % 3 == 0) {
				currentX = 10;
				currentY += height;
			}
		}

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
		} else if (e.getSource() == channelCheckBox) {
			String channelStrings = "";
			Component[] checkBoxs = channelCheckBoxPannel.getComponents();
			for (Component component : checkBoxs) {
				JCheckBox jcheckBox = (JCheckBox) component;
				if (jcheckBox.isSelected()) {
					channelStrings += jcheckBox.getText() + ";";
				}
			}
			if (channelStrings.length() > 0) {
				channelStrings = channelStrings.substring(0, channelStrings.length() - 1);
			}
			System.out.println(channelStrings);

			// ChannelBean anzhiChannelBean = new ChannelBean("anzhi", "安智");
			// if (channelCheckBoxAnzhi.isSelected()) {
			// channels.add(anzhiChannelBean);
			// } else {
			// removeChannelBeanFromList(channels, anzhiChannelBean);
			// }
			// getAllChannelFromList(channels);
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
