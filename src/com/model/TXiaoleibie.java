package com.model;

/**
 * TXiaoleibie generated by MyEclipse Persistence Tools
 */

public class TXiaoleibie implements java.io.Serializable
{

	private Integer id;
	private String mingcheng;
	private String del;
	private int catelogId;


	/** default constructor */
	public TXiaoleibie()
	{
	}

	/** full constructor */
	public TXiaoleibie(String mingcheng, String del)
	{
		this.mingcheng = mingcheng;
		this.del = del;
	}

	// Property accessors

	public Integer getId()
	{
		return this.id;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public String getMingcheng()
	{
		return this.mingcheng;
	}

	public void setMingcheng(String mingcheng)
	{
		this.mingcheng = mingcheng;
	}

	public int getCatelogId()
	{
		return catelogId;
	}

	public void setCatelogId(int catelogId)
	{
		this.catelogId = catelogId;
	}

	public String getDel()
	{
		return this.del;
	}

	public void setDel(String del)
	{
		this.del = del;
	}

}