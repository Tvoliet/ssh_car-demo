package com.model;

/**
 * THuifu generated by MyEclipse Persistence Tools
 */

public class THuifu implements java.io.Serializable
{

	private Integer id;
	private String title;
	private String content;
	private String shijian;

	private Integer userId;
	private Integer zhutiId;
	
	private TUser user;
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	
	public TUser getUser()
	{
		return user;
	}
	public void setUser(TUser user)
	{
		this.user = user;
	}
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public String getShijian()
	{
		return shijian;
	}
	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public Integer getUserId()
	{
		return userId;
	}
	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}
	public Integer getZhutiId()
	{
		return zhutiId;
	}
	public void setZhutiId(Integer zhutiId)
	{
		this.zhutiId = zhutiId;
	}

}