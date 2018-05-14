package com.car.entity.manager;

public class ResourcesTree {

	private Integer id; // id
	private Integer pId; // 父id
	private String name; // 名称
	private boolean open; // 是否打开子窗口
	private boolean checked; // 是否选中，回显
	private Integer isSelect; // 是否拥有该权限，没有的话，是0

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPId() {
		return pId;
	}

	public void setPId(Integer pId) {
		this.pId = pId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isOpen() {
		// 如果父id=0，则打开子窗口
		if (pId == 0) {
			open = true;
		}
		return open;
	}

	public void setOpen(boolean open) {
		this.open = open;
	}

	public boolean isChecked() {
		if (isSelect > 0 ) {
			checked = true;
		}
		return checked;
	}

	public void setChecked(boolean checked) {
		this.checked = checked;
	}

	public Integer getIsSelect() {
		return isSelect;
	}

	public void setIsSelect(Integer isSelect) {
		this.isSelect = isSelect;
	}

}
