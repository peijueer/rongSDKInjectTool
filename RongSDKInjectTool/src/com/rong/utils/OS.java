/**   
 * @Title: OS.java 
 * @Package com.rong.utils 
 * @Description: TODO(用一句话描述该文件做什么) 
 * @author peijueer   
 * @date 2017-12-25 上午11:25:23 
 * @version V1.0   
 */
package com.rong.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.Arrays;

import com.rong.exception.BrutException;

/**
 * @ClassName: OS
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author peijueer
 * @date 2017-12-25 上午11:25:23
 * 
 */
public class OS {
	/**
	 * 执行命令
	 * 
	 * @param cmd
	 * @throws BrutException
	 */
	public static void exec(String[] cmd) throws BrutException {
		Process ps = null;
		try {
			StringBuilder sb = new StringBuilder();

			String[] arrayOfString = cmd;
			int j = cmd.length;
			for (int i = 0; i < j; i++) {
				String str = arrayOfString[i];
				sb.append(str).append(" ");
			}
			System.out.println(sb.toString());
			ps = Runtime.getRuntime().exec(sb.toString());

			new StreamForwarder(ps.getInputStream(), System.err, "utf-8").start();
			new StreamForwarder(ps.getErrorStream(), System.err, "utf-8").start();
			if (ps.waitFor() != 0) {
				throw new BrutException(new IOException());
			}
		} catch (IOException ex) {
			throw new BrutException("could not exec command: " + Arrays.toString(cmd), ex);
		} catch (InterruptedException ex) {
			throw new BrutException("could not exec command: " + Arrays.toString(cmd), ex);
		}
	}

	/**
	 * 获取系统回馈
	 * 
	 * @author lifuzan
	 * 
	 */
	static class StreamForwarder extends Thread {
		private final InputStream mIn;
		private final OutputStream mOut;
		private String mEncode;

		public StreamForwarder(InputStream in, OutputStream out, String encode) {
			this.mIn = in;
			this.mOut = out;
			this.mEncode = encode;
		}

		public void run() {
			try {
				BufferedReader in = new BufferedReader(new InputStreamReader(this.mIn, this.mEncode));
				BufferedWriter out = new BufferedWriter(new OutputStreamWriter(this.mOut, this.mEncode));
				String line;
				while ((line = in.readLine()) != null) {
					out.write(line);
					out.newLine();
					System.out.println(line);
				}
				out.flush();
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
	}
}
