package com.radioc.forms;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.ScriptAssert;

import com.radioc.hbeans.User;

@ScriptAssert.List({
	@ScriptAssert(lang="javascript", script="_this.password1.equals(_this.password2)", message="constraints.fieldmatch.false" )
})
public class UserPasswordChangeHolderForm {

	@NotNull
	private String userId;

	@NotNull
	@Size(min = 8, max = 36)
	private String password1;

	@NotNull
	@Size(min = 8, max = 36)
	private String password2;

	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}

	/**
	 * @return the password1
	 */
	public String getPassword1() {
		return password1;
	}

	/**
	 * @param password1 the password1 to set
	 */
	public void setPassword1(String password1) {
		this.password1 = password1;
	}

	/**
	 * @return the password2
	 */
	public String getPassword2() {
		return password2;
	}

	/**
	 * @param password2 the password2 to set
	 */
	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public static UserPasswordChangeHolderForm createEmpty() {
		return new UserPasswordChangeHolderForm();
	}

	

}