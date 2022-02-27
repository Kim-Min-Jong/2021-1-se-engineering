/*
 * Restaurant Booking System: example code to accompany
 *
 * "Practical Object-oriented Design with UML"
 * Mark Priestley
 * McGraw-Hill (2004)
 */

package Team6.RestaurantV2.domain ;

public class Customer
{
  private String oid;
  private String name ;
  private String phoneNumber ;
  private String id;
  private String password;

  public Customer()
  {
  }
  
  public String getOid() {
	  return oid;
  }

  public String getName()
  {
    return name ;
  }

  public String getPhoneNumber()
  {
    return phoneNumber ;
  }
  
  public String getId()
  {
    return id ;
  }
  
  public String getPassword()
  {
    return password ;
  }
  public void setId(String id) {
	  this.id = id;
  }
  
  public void setPassword(String password) {
	  this.password = password;
  }
  
  public void setName(String name) {
	  this.name = name;
  }
  
  public void setPhoneNumber(String phoneNumber) {
	  this.phoneNumber = phoneNumber;
  }
  
}
