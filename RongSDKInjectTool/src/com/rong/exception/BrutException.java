package com.rong.exception;

/**
 * 
 * @author evil.xu
 * 
 */
public class BrutException extends Exception {

	private static final long serialVersionUID = 1L;

	public BrutException(Throwable cause) {
		super(cause);
	}

	public BrutException(String message, Throwable cause) {
		super(message, cause);
		System.out.println(message + "---" + cause);
	}

	public BrutException(String message) {
		super(message);
		System.out.println("message:" + message);
		// TODO 回调
	}

	public BrutException() {
	}
}
