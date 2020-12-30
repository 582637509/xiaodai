package cn.tedu.comic.entity;

import java.io.Serializable;
import java.util.Date;
/**
 * 用户数据
 * @author Administrator
 *
 */
public class User implements Serializable{
	private static final long serialVersionUID = 4518823418103274645L;
	private Integer id;
	private String username;
	private String password;
	private String nickname; // 昵称
	private String qq; 		// qq
	private String address;//地址
	private String email;
	private String phone;
	private Integer gender;
	private String avadar;//头像路径
	private String salt;
	private Date member;//会员到期日
	private Date birthday;//生日
	private String contactWay;//联系方式
	private String signature;//个性签名
	private Integer gold;//金币
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getMember() {
		return member;
	}
	public void setMember(Date member) {
		this.member = member;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	
	public String getContactWay() {
		return contactWay;
	}
	public void setContactWay(String contactWay) {
		this.contactWay = contactWay;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	public Integer getGold() {
		return gold;
	}
	public void setGold(Integer gold) {
		this.gold = gold;
	}
	private Integer isDelete;
	private Integer status;
	private String createUser;
	private Date createTime;
	private String modifiedUser;
	private Date modifiedTime;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public Integer getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getCreateUser() {
		return createUser;
	}
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getModifiedUser() {
		return modifiedUser;
	}
	public void setModifiedUser(String modifiedUser) {
		this.modifiedUser = modifiedUser;
	}
	public Date getModifiedTime() {
		return modifiedTime;
	}
	public void setModifiedTime(Date modifiedTime) {
		this.modifiedTime = modifiedTime;
	}
	public String getAvadar() {
		return avadar;
	}
	public void setAvadar(String avadar) {
		this.avadar = avadar;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", nickname=" + nickname
				+ ", qq=" + qq + ", address=" + address + ", email=" + email + ", phone=" + phone + ", gender=" + gender
				+ ", avadar=" + avadar + ", salt=" + salt + ", member=" + member + ", birthday=" + birthday
				+ ", contactWay=" + contactWay + ", signature=" + signature + ", gold=" + gold + ", isDelete="
				+ isDelete + ", status=" + status + ", createUser=" + createUser + ", createTime=" + createTime
				+ ", modifiedUser=" + modifiedUser + ", modifiedTime=" + modifiedTime + "]";
	}
	public User(String username, String password, String email, String phone) {
		this.username = username;
		this.password = password;
		this.email = email;
		this.phone = phone;
	}
	public User(){
		
	}
	
}
