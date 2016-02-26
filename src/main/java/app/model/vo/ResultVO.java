package app.model.vo;

import java.io.Serializable;
import java.util.Collection;

import com.google.gson.Gson;

public class ResultVO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Collection<? extends Object> result;

	public Object oneResult;

	public static String toJsonString(Object result) {
		try {
			return new Gson().toJson(result);
		} catch (Exception e) {
			return null;
		}
	}

	public static String toJsonString(Collection<? extends Object> result) {
		try {
			return new Gson().toJson(result);
		} catch (Exception e) {
			return null;
		}
	}

}
