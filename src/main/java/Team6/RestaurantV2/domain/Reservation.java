/*
 * Restaurant Booking System: example code to accompany
 *
 * "Practical Object-oriented Design with UML"
 * Mark Priestley
 * McGraw-Hill (2004)
 */

package Team6.RestaurantV2.domain ;


import java.sql.Date ;
import java.sql.Time ;

public class Reservation 
{
  private int oid;
  private String name;
  private String     arrivalTime ;
  private String phoneNumber;
  private int covers;
  private String d;
  
  
 

  public String getArrivalTime() {
    return arrivalTime ;
  }

  public String getName() {
    return name ;
  }
  
  public String getPhoneNumber() {
	return phoneNumber ;
  }
  
  
  public String getDate() {
	    return d;
  }

  public int getOid() {
		// TODO Auto-generated method stub
		return oid;
  }
  
  public int getCovers() {
		// TODO Auto-generated method stub
		return covers;
  }  
  
  public void setOid(int oid) {
		// TODO Auto-generated method stub
		this.oid = oid;
  }  
  
  public void setCovers(int covers) {
		// TODO Auto-generated method stub
		this.covers = covers;
  }
  
  
  public void setArrivalTime(String arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  public void setName(String name) {
    this.name = name;
  }
  
  public void setPhoneNumber(String phoneNumber) {
	    this.phoneNumber = phoneNumber;
  }
  
  public void setDate(String d) {
	    this.d = d;
}




}
