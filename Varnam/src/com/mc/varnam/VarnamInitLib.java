package com.mc.varnam;

public class VarnamInitLib {
	
	public native static int varnam_init(const char *scheme_file, varnam **handle, char **msg);
	
	static {
		System.loadLibrary("com_mc_varnam_VarnamInitLib");
	}
	
}
