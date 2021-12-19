/*IT19117874
 * Amarasinghe W.K.P.G
 */
package com.user;

public class bill {
	
	
	private String bId;
	private int pId;
	private int roomCh;
	private int doctCh;
	private int testFee;
	private int otheCh;
	private int total;
	
	public bill( String bId,int pId, int roomCh, int doctCh, int testFee, int otheCh, int total) {
		this.bId = bId;
		this.pId = pId;
		this.roomCh = roomCh;
		this.doctCh = doctCh;
		this.testFee = testFee;
		this.otheCh = otheCh;
		this.total = total;
	}
	public String getbId() {
		return bId;
	}

	public int getpId() {
		return pId;
	}

	
	public int getRoomCh() {
		return roomCh;
	}

	public int getDoctCh() {
		return doctCh;
	}
	
	public int getTestFee() {
		return testFee;
	}
	
	public int getOtheCh() {
		return otheCh;
	}
	
	public int getTotal() {
		return total;
	}
	

	
}
