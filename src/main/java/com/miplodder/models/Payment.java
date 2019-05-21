package com.miplodder.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "payment")
public class Payment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "paymentid")
	int paymentId;

	@Column(name = "cardname")
	String cardName;

	@Column(name = "cardnumber")
	String cardNumber;

	@Column(name = "cvv")
	int cvv;

	@Column(name = "expiryyear")
	int expiryYear;

	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}

	public String getCardName() {
		return cardName;
	}

	public void setCardName(String cardName) {
		this.cardName = cardName;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public int getCvv() {
		return cvv;
	}

	public void setCvv(int cvv) {
		this.cvv = cvv;
	}

	public int getExpiryYear() {
		return expiryYear;
	}

	public void setExpiryYear(int expiryYear) {
		this.expiryYear = expiryYear;
	}

	@Override
	public String toString() {
		return "Payment [paymentId=" + paymentId + ", cardName=" + cardName + ", cardNumber=" + cardNumber + ", cvv="
				+ cvv + ", expiryYear=" + expiryYear + "]";
	}

}
