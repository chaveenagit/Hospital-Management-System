/**
 * IT19114736
 * De Silva K.C.C.C
 * 
 */

package com.user;

public class Patient {
	
	private int iduser;
	private String name;
	private int age;
	private String phone;
	private String address;
	private String gender;
    private String Blood_group;
    private String description;
	
    //constructor
    public Patient(int iduser, String name, int age, String phone, String address, String gender, String blood_group,
			String description) {
	
		this.iduser = iduser;
		this.name = name;
		this.age = age;
		this.phone = phone;
		this.address = address;
		this.gender = gender;
		this.Blood_group = blood_group;
		this.description = description;
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

	public String getBlood_group() {
		return Blood_group;
	}

	public String getDescription() {
		return description;
	}

    
    

}
