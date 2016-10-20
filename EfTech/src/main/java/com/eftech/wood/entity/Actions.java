package com.eftech.wood.entity;

import java.io.Serializable;
import java.text.DateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * The persistent class for the actions database table.
 * 
 */
@Entity
@Table(name = "actions")
public class Actions implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    private int idaction;

    @Column(name = "date_action")
    private String dateAction;

    private String username;

    @Column(name = "what_is_done")
    private String whatIsDone;

    public Actions() {
    }

    public Actions(String username, String whatIsDone) {
	this.username = username;
	this.whatIsDone = whatIsDone;
	this.dateAction = DateToString(new Date());
    }

    public int getIdaction() {
	return this.idaction;
    }

    public void setIdaction(int idaction) {
	this.idaction = idaction;
    }

    public String getDateAction() {
	return this.dateAction;
    }

    public void setDateAction(Date dateAction) {
	this.dateAction = DateToString(dateAction);
    }

    public String getUsername() {
	return this.username;
    }

    public void setUsername(String username) {
	this.username = username;
    }

    public String getWhatIsDone() {
	return this.whatIsDone;
    }

    public void setWhatIsDone(String whatIsDone) {
	this.whatIsDone = whatIsDone;
    }

    private String DateToString(Date date) {
	String result = "";
	DateFormat df = DateFormat.getDateInstance(DateFormat.DEFAULT);
	result += df.format(date);
	df = DateFormat.getTimeInstance(DateFormat.DEFAULT);
	result += " " + df.format(date);
	return result;
    }

}