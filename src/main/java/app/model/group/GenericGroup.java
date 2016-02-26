package app.model.group;

import javax.persistence.Entity;

import app.model.BaseModel;

@Entity
public class GenericGroup extends BaseModel {

	public String groupName;

	public String logo;

}
