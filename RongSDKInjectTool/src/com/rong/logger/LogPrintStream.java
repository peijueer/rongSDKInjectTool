/**   
 * @Title: LogPrintStream.java 
 * @Package com.rong.logger 
 * @Description: TODO(用一句话描述该文件做什么) 
 * @author peijueer   
 * @date 2018-1-10 上午11:21:19 
 * @version V1.0   
 */
package com.rong.logger;

import java.io.OutputStream;
import java.io.PrintStream;

import javax.swing.SwingUtilities;
import javax.swing.text.JTextComponent;

/**
 * @ClassName: LogPrintStream
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author peijueer
 * @date 2018-1-10 上午11:21:19
 * 
 */
public class LogPrintStream extends PrintStream {

	private JTextComponent jTextComponent;
	private StringBuffer stringBuffer = new StringBuffer();

	public LogPrintStream(OutputStream out, JTextComponent mJtJTextComponent) {
		super(out);
		this.jTextComponent = mJtJTextComponent;
	}

	public void write(byte[] buff, int off, int len) {
		final String message = new String(buff, off, len);
		SwingUtilities.invokeLater(new Runnable() {
			@Override
			public void run() {
				stringBuffer.append(message);
				jTextComponent.setText(stringBuffer.toString());
				jTextComponent.setCaretPosition(jTextComponent.getDocument().getLength());
			}
		});
	}

}
