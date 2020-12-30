package cn.tedu.comic.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 每一条支付记录
 * 
 * @author Administrator
 *
 */
public class Flow implements Serializable {

	private static final long serialVersionUID = 2723690489853237832L;

	private Integer id;
	private Integer uid; // 用户ID
	private String outTradeNo; // 订单号
	private String sellerId; // 商户账号
	private Integer transMethod;// 交易方式,支付宝10,微信20
	private BigDecimal totalAmount; // 支付金额
	private String gmtClose; // 交易完成时间

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getOutTradeNo() {
		return outTradeNo;
	}

	public void setOutTradeNo(String outTradeNo) {
		this.outTradeNo = outTradeNo;
	}

	public String getSellerId() {
		return sellerId;
	}

	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}

	public Integer getTransMethod() {
		return transMethod;
	}

	public void setTransMethod(Integer transMethod) {
		this.transMethod = transMethod;
	}

	public BigDecimal getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(BigDecimal totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getGmtClose() {
		return gmtClose;
	}

	public void setGmtClose(String gmtClose) {
		this.gmtClose = gmtClose;
	}

	@Override
	public String toString() {
		return "Flow [id=" + id + ", uid=" + uid + ", outTradeNo=" + outTradeNo + ", sellerId=" + sellerId
				+ ", transMethod=" + transMethod + ", totalAmount=" + totalAmount + ", gmtClose=" + gmtClose + "]";
	}

}
