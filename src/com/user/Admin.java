/**
 * IT19114736
 * De Silva K.C.C.C
 * 
 */

package com.user;

public class Admin{
	private int idadmin;
	private String name;
	private String uname;
	private String pwd;
	
	//constructor
	public Admin(int idadmin, String name, String uname, String pwd) {
		super();
		this.idadmin = idadmin;
		this.name = name;
		this.uname = uname;
		this.pwd = pwd;
	}

	//getters
	public int getIdadmin() {
		return idadmin;
	}

	public String getName() {
		return name;
	}

	public String getUname() {
		return uname;
	}

	public String getPwd() {
		return pwd;
	}



}
