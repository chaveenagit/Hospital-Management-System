/**
 * IT19114736
 * De Silva K.C.C.C
 * 
 */

package com.user;

public class User {
	
	protected int iduser;
	protected String name;
	protected int age;
	protected String phone;
	protected String address;
	protected String gender;
	protected String username;
	protected String password;
    
    //constructor
	public User(int iduser, String name, int age, String phone, String address, String gender, String username,
			String password) {
		super();
		this.iduser = iduser;
		this.name = name;
		this.age = age;
		this.phone = phone;
		this.address = address;
		this.gender = gender;
		this.username = username;
		this.password = password;
	}

	//getters
	public int getIduser() {
		return iduser;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public String getPhone() {
		return phone;
	}

	public String getAddress() {
		return address;
	}

	public String getGender() {
		return gender;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

    

}
