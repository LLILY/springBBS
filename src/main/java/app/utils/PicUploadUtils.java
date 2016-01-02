package app.utils;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.ContentBody;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.util.EntityUtils;

import com.google.common.reflect.TypeToken;
import com.google.gson.Gson;

public class PicUploadUtils {
	/**
	 * 上传方法 返回上传完毕的文件名 *
	 */
	@SuppressWarnings("all")
	public static String postFile(File file) throws ClientProtocolException,
			IOException, Exception {
		HttpClient httpclient = new DefaultHttpClient();
		// 设置通信协议版本
		httpclient.getParams().setParameter(
				CoreProtocolPNames.PROTOCOL_VERSION, HttpVersion.HTTP_1_1);
		HttpPost httppost = new HttpPost("http://oss.joy-read.com/formImage");
		MultipartEntity mpEntity = new MultipartEntity(); // 文件传输
		ContentBody cbFile = new FileBody(file);
		mpEntity.addPart("qqfile", cbFile);
		mpEntity.addPart("source", new StringBody("WEBOOK"));
		mpEntity.addPart("bucketName", new StringBody("webooks"));
		httppost.setEntity(mpEntity);
		// System.out.println("executing request " + httppost.getRequestLine());
		HttpResponse response = httpclient.execute(httppost);
		HttpEntity resEntity = response.getEntity();
		// System.out.println(response.getStatusLine());// 通信Ok
		String json = "";
		String path = "";
		if (resEntity != null) {
			json = EntityUtils.toString(resEntity, "utf-8");
			System.err.println(json + "----------------");
			Map<String, String> urlMap = new Gson().fromJson(json,
					new TypeToken<Map<String, String>>() {
					}.getType());
			path = urlMap.get("html");
		}
		if (resEntity != null) {
			resEntity.consumeContent();
		}
		httpclient.getConnectionManager().shutdown();
		return path;
	}
}
