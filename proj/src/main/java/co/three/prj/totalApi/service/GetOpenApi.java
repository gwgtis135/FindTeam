package co.three.prj.totalApi.service;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import java.io.BufferedReader;
import java.io.IOException;

import org.json.JSONObject;
import org.json.XML;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

public class GetOpenApi {

	public static String GetApi(String pc) throws IOException { // 어디에서나 쓸수있도록 get메서드 공용클래스만듬
		System.out.println(pc);
		// 현재 날짜 구하기
		LocalDate now = LocalDate.now();
		// today format 형식
		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyyMMdd");
		// format적용
		String today = now.format(format);
		// 1년 전 날짜 구하기
		format = DateTimeFormatter.ofPattern("yyyy");
		String startDay = now.format(format);
		int stDay = Integer.parseInt(startDay) - 1;
		String str = String.valueOf(stDay) + "0101";

		// 경찰청 공공데이터 openApi url
		String apiUrl = "http://apis.data.go.kr/1320000/LosfundInfoInqireService/getLosfundInfoAccToClAreaPd?serviceKey"
				+ "=uFfX1uIn4VJvKAYCqPen0T41BiE0aQKe%2BwQbD1v1RATxmvbSB7ohrYKZVCQ9uHXM1SC4RvgbMc6%2FN1mDRpb2xg%3D%3D"
				+ "&PRDT_CL_CD_01=" + pc + "&START_YMD=" + str + "&END_YMD=" + today + "&pageNo=1" + "&numOfRows=57"
				+ "&N_FD_LCT_CD=LCR000";

		StringBuilder sb = new StringBuilder();

		try {
			URL urlApi = new URL(apiUrl);
			HttpURLConnection conn = (HttpURLConnection) urlApi.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
			System.out.println("Response code: " + conn.getResponseCode());

			BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
				rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			} else {
				rd = new BufferedReader(new InputStreamReader(conn.getErrorStream(), "UTF-8"));
			}

			String line;
			while ((line = rd.readLine()) != null) {
				sb.append(line);
			}
			rd.close();

			conn.disconnect();
		} catch (Exception e) {
			e.printStackTrace();
		}

		// xml원시 데이터
		String result = sb.toString();

		// result값을 담은 xmlToJson 메소드 실행
		// jsonData는 xmlToJson메소드에서 xml데이터를 json으로 파싱한 값이 담김
		// 리턴값이 String타입으로 넘어옴
		String jsonData = xmlToJson(result);
		return jsonData;

	}

	// xml을 json으로 파싱
	public static String xmlToJson(String str) {
		String output = "";
		try {
			String xml = str;

			// parsing
			JSONObject jObject = XML.toJSONObject(xml);
			ObjectMapper mapper = new ObjectMapper();
			mapper.enable(SerializationFeature.INDENT_OUTPUT);
			Object json = mapper.readValue(jObject.toString(), Object.class);
			output = mapper.writeValueAsString(json);

			System.out.println(output);

		} catch (Exception e) {
			e.printStackTrace();
		}
		// 이 메소드를 호출한 곳으로 결과값 리턴=>GetApi의 마지막 부분
		return output;
	}
}
