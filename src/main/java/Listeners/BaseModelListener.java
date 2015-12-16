package Listeners;

import java.util.Date;

import javax.persistence.PreUpdate;

import app.model.BaseModel;

public class BaseModelListener {

	@PreUpdate
	public static void preUpdate(BaseModel baseModel) {

		baseModel.lastModifyTime = new Date();
	}

}
