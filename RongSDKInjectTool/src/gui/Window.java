/**   
 * @Title: Window.java 
 * @Package views 
 * @Description: TODO(用一句话描述该文件做什么) 
 * @author peijueer   
 * @date 2017-12-28 下午4:35:51 
 * @version V1.0   
 */
package gui;

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
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

import com.rong.bean.ChannelBean;
import com.rong.logger.LogPrintStream;
import com.rong.utils.FileUtils;
import com.rong.utils.ToolUtils;

/**
 * @ClassName: Window
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author peijueer
 * @date 2017-12-28 下午4:35:51
 * 
 */
public class Window extends JFrame implements ActionListener, ItemListener {
	private static final long serialVersionUID = -1189035634361220261L;
	private static final String ROOTPATH = new File("").getAbsolutePath();
	private static final String cacheFileName = "smaliTemp";
	private static final int FRAME_WIDTH = 500;
	private static final int FRAME_HIGHT = 500;
	private static final int ROW_ONE_Y = 5;
	private static final int ROW_ONE_HIGHT = 25;
	private static final int APKPATHLABEL_X = 10;
	private static final int APKPATHLABEL_WIDTH = 75;
	private static final int APKPATHTEXT_X = 85;
	private static final int APKPATHTEXT_WIDTH = 330;
	private static final int APKPATHBUTTON_X = 415;
	private static final int APKPATHBUTTON_WIDTH = 75;

	private static final int ROW_TWO_Y = 35;
	private static final int ROW_TWO_HIGHT = 25;
	private static final int CHOSELABEL_X = 10;
	private static final int CHOSELABEL_WIDTH = 110;
	private static final int CHOSEALL_X = 120;
	private static final int CHOSEALL_WIDTH = 130;
	private static final int ORIENT_X = 260;
	private static final int ORIENT_WIDTH = 80;
	private static final int LAND_X = 340;
	private static final int LAND_WIDTH = 70;
	private static final int PORT_X = 420;
	private static final int PROT_WIDTH = 70;

	private static final int ROW_THREE_Y = 65;
	private int ROW_THREE_HEIGHT = 80;
	private static final int CHOSETEXT_X = 10;
	private static final int CHOSETEXT_WIDTH = 480;

	private static final int ROW_FOUR_Y = 145;
	private int checkboxpanel_hight = 150;
	private static final int CHECKBOXPANEL_X = 10;
	private static final int CHECKBOXPANEL_WIDTH = 480;

	private int row_five_y = 300;
	private static final int ROW_FIVE_HIGHT = 25;
	private static final int PACKBTN_X = 10;
	private static final int PACKBTN_WIDTH = 480;

	private int row_six_y = 330;
	private int row_six_hight = 160;
	private static final int LOGTEXT_X = 10;
	private static final int LOGTEXT_WIDTH = 480;

	private List<ChannelBean> allChannelsList = new ArrayList<ChannelBean>();
	private List<ChannelBean> chosedChannelsList = new ArrayList<ChannelBean>();
	private String apkName = "";
	JFrame mainFrame = new JFrame("融合SDK子渠道打包工具v1.0.0");
	JPanel panel = new JPanel();

	JLabel apkPathLabel = new JLabel("apk选择");
	JTextField apkPathText = new JTextField(60);
	JButton apkPathButton = new JButton("...");

	JPanel channelCheckBoxPanel = new JPanel();
	JCheckBox choseAllCheckBoxs = new JCheckBox("全选 / 取消全选");
	JLabel channelChoseLabel = new JLabel("已勾选子渠道如下：");
	JLabel orientLabel = new JLabel("游戏方向：");
	JRadioButton landRadioButton = new JRadioButton("横屏", true);
	JRadioButton portRadioButton = new JRadioButton("竖屏");
	private boolean isLand = true;
	ButtonGroup radioButtonGroup = new ButtonGroup();
	JTextArea channelChosedText = new JTextArea();
	JButton packButton = new JButton("开始打包");
	JScrollPane logJScrollPane = null;
	JTextArea logTextArea = new JTextArea();

	public void show() {
		initChannels();
		mainFrame.setSize(FRAME_WIDTH, FRAME_HIGHT);
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

	/**
	 * @Title: clearCache
	 * @Description: 清理上次打包产生的缓存内容
	 * @return void 返回类型
	 * @throws
	 */
	private void clearCache() {
		File rootFile = new File(ROOTPATH);
		File[] files = rootFile.listFiles();
		for (File file : files) {
			if (file.getName().contains(cacheFileName)) {
				System.out.println("正在清理缓存文件：" + file.getName());
				FileUtils.rmdir(file);
			}
		}
	}

	private void initChannels() {
		String channelsMsgString = FileUtils.readFileContent(ROOTPATH + "/config/channel_config");
		if ("".equals(channelsMsgString)) {
			JOptionPane.showMessageDialog(null, "请检查渠道配置文件，路径为/config/channel_config!");
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
		// “选择apk”Label
		apkPathLabel.setBounds(APKPATHLABEL_X, ROW_ONE_Y, APKPATHLABEL_WIDTH, ROW_ONE_HIGHT);
		// “选择apk”编辑框
		apkPathText.setBounds(APKPATHTEXT_X, ROW_ONE_Y, APKPATHTEXT_WIDTH, ROW_ONE_HIGHT);
		// “选择apk”选择按钮
		apkPathButton.setBounds(APKPATHBUTTON_X, ROW_ONE_Y, APKPATHBUTTON_WIDTH, ROW_ONE_HIGHT);
		// 对路径编辑框支持拖拽
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
						fileName = fileName.replaceAll("\\\\", "/");
						apkName = fileName.substring(fileName.lastIndexOf("/") + 1, fileName.indexOf(".apk"));
						System.out.println(apkName);
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
		// “子渠道”
		channelChoseLabel.setBounds(CHOSELABEL_X, ROW_TWO_Y, CHOSELABEL_WIDTH, ROW_TWO_HIGHT);
		choseAllCheckBoxs.setBounds(CHOSEALL_X, ROW_TWO_Y, CHOSEALL_WIDTH, ROW_TWO_HIGHT);
		choseAllCheckBoxs.addActionListener(this);
		orientLabel.setBounds(ORIENT_X, ROW_TWO_Y, ORIENT_WIDTH, ROW_TWO_HIGHT);
		landRadioButton.setBounds(LAND_X, ROW_TWO_Y, LAND_WIDTH, ROW_TWO_HIGHT);
		portRadioButton.setBounds(PORT_X, ROW_TWO_Y, PROT_WIDTH, ROW_TWO_HIGHT);
		radioButtonGroup.add(landRadioButton);
		radioButtonGroup.add(portRadioButton);
		landRadioButton.addActionListener(this);
		portRadioButton.addActionListener(this);

		channelChosedText.setBounds(CHOSETEXT_X, ROW_THREE_Y, CHOSETEXT_WIDTH, ROW_THREE_HEIGHT);
		channelChosedText.setEditable(false);
		channelChosedText.setLineWrap(true);

		ChannelBean channelBean = null;
		int channelCount = allChannelsList.size();
		JCheckBox[] jcheckBoxs = new JCheckBox[channelCount];
		int currentX = 0;
		int currentY = 0;
		int width = (FRAME_WIDTH - 10) / 5;
		int height = 25;
		checkboxpanel_hight = channelCount % 5 == 0 ? (channelCount / 5) * 25 : (channelCount / 5 + 1) * 25;
		channelCheckBoxPanel.setLayout(null);
		channelCheckBoxPanel.setBounds(CHECKBOXPANEL_X, ROW_FOUR_Y, CHECKBOXPANEL_WIDTH, checkboxpanel_hight);
		for (int i = 0; i < channelCount; i++) {
			channelBean = allChannelsList.get(i);
			jcheckBoxs[i] = new JCheckBox();
			jcheckBoxs[i].setText(channelBean.getChannelName());
			jcheckBoxs[i].setBounds(currentX, currentY, width, height);
			jcheckBoxs[i].addItemListener(this);
			channelCheckBoxPanel.add(jcheckBoxs[i]);
			currentX += width;
			if ((i + 1) % 5 == 0) {
				currentX = 0;
				currentY += height;
			}
		}

		panel.add(choseAllCheckBoxs);
		panel.add(channelChoseLabel);
		panel.add(channelChosedText);
		panel.add(channelCheckBoxPanel);
		panel.add(orientLabel);
		panel.add(landRadioButton);
		panel.add(portRadioButton);

		row_five_y = ROW_FOUR_Y + checkboxpanel_hight + 5;

		packButton.setBounds(PACKBTN_X, row_five_y, PACKBTN_WIDTH, ROW_FIVE_HIGHT);
		panel.add(packButton);
		packButton.addActionListener(this);

		row_six_y = row_five_y + ROW_FIVE_HIGHT + 5;
		row_six_hight = FRAME_HIGHT - row_six_y - 35;
		logJScrollPane = new JScrollPane();
		logJScrollPane.setBounds(LOGTEXT_X, row_six_y, LOGTEXT_WIDTH, row_six_hight);
		logJScrollPane.setViewportView(logTextArea);
		logJScrollPane.setAutoscrolls(true);
		panel.add(logJScrollPane);

		LogPrintStream logPrintStream = new LogPrintStream(System.out, logTextArea);
		System.setOut(logPrintStream);
		System.setErr(logPrintStream);
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
		} else if (e.getSource() == choseAllCheckBoxs) {
			checkBoxOpt(choseAllCheckBoxs.isSelected());
		} else if (e.getSource() == landRadioButton) {
			isLand = true;
			System.out.println("当前选择了横屏");
		} else if (e.getSource() == portRadioButton) {
			isLand = false;
			System.out.println("当前选择了竖屏");
		} else if (e.getSource() == packButton) {
			packButton.setEnabled(false);
			clearCache();
			chosedChannelsList.clear();
			for (ChannelBean channelBean : allChannelsList) {
				if (channelBean.isSelect()) {
					chosedChannelsList.add(channelBean);
				}
			}

			if ("".equals(apkPathText.getText())) {
				JOptionPane.showMessageDialog(null, "请选择apk！");
				packButton.setEnabled(true);
				return;
			}

			if (chosedChannelsList.size() < 0) {
				JOptionPane.showMessageDialog(null, "请勾选子渠道！");
				packButton.setEnabled(true);
				return;
			}

			new Thread() {
				public void run() {
					logTextArea.setText("" + apkName);
					System.out.println("准备执行反编译命令");
					ToolUtils.unPackAPk(apkPathText.getText());
					try {
						Thread.sleep(10000);
					} catch (Exception exception) {
					}

					for (ChannelBean channelBean : chosedChannelsList) {
						System.out.println("当前子渠道为：" + channelBean.getChannelName());

						System.out.println("准备拷贝反编译文件...");
						ToolUtils.copySrcForChannel(channelBean);
						System.out.println("完成反编译文件的拷贝...");

						System.out.println("准备拷贝子渠道资源文件...");
						ToolUtils.copyChannelResourceForSrc(channelBean);
						System.out.println("完成子渠道资源文件的拷贝...");

						System.out.println("准备修改相关文件...");
						ToolUtils.modifyFileForChannel(isLand, channelBean);
						System.out.println("完成相关文件修改...");

						try {
							Thread.sleep(10000);
						} catch (Exception exception) {
						}

						System.out.println("准备回编译...");
						ToolUtils.pack(channelBean);
						System.out.println("完成回编译...");

						try {
							Thread.sleep(20000);
						} catch (Exception exception) {
						}

						System.out.println("准备对文件进行签名....");
						ToolUtils.sign(channelBean, apkName);
						System.out.println("完成文件签名...");
					}

					System.out.println("所有渠道包打包完成...");
					packButton.setEnabled(true);
				};
			}.start();

		}
	}

	private void checkBoxOpt(boolean selected) {
		Component[] checkBoxs = channelCheckBoxPanel.getComponents();
		for (Component component : checkBoxs) {
			JCheckBox jcheckBox = (JCheckBox) component;
			jcheckBox.setSelected(selected);
		}
	}

	@Override
	public void itemStateChanged(ItemEvent e) {
		String channelStrings = "";
		Component[] checkBoxs = channelCheckBoxPanel.getComponents();
		for (int i = 0; i < checkBoxs.length; i++) {
			JCheckBox jcheckBox = (JCheckBox) checkBoxs[i];
			if (jcheckBox.isSelected()) {
				allChannelsList.get(i).setSelect(true);
				channelStrings += jcheckBox.getText() + ";";
			} else {
				allChannelsList.get(i).setSelect(false);
			}
		}
		if (channelStrings.length() > 0) {
			channelStrings = channelStrings.substring(0, channelStrings.length() - 1);
		}

		channelChosedText.setText(channelStrings);
	}
}
