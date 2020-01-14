package egovframework.example.sample.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TEST {

	public static void main(String[] args) {

		/*
		 * class Person{ String name; int age; String email; String gender;
		 * 
		 * //생성자. 값을 넘겨 받았을 떄 위에 선언한 변수에 데이터 넣어줘야함 public Person(String n, int
		 * a, String e, String g) { name = n; age = a; email = e; gender = g; }
		 * 
		 * }
		 * 
		 * 
		 * HashMap<String ,Person> p = new HashMap<String, Person>();
		 * 
		 * p.put("p1", new Person("지우", 20, "wldn@naver.com", "여"));
		 * 
		 * 
		 * System.out.printf("성별: " + p.get("p1").gender);
		 */

		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		Map<String, String> map = new HashMap<String, String>();

		map.put("성명", "지우");
		map.put("나이", "11");
		map.put("이메일", "wldn@daum.net");
		map.put("성별", "여자");
		list.add(map);

		map = new HashMap<String, String>();
		map.put("성명", "나무");
		map.put("나이", "22");
		map.put("이메일", "sou33485@daum.net");
		map.put("성별", "여자");
		list.add(map);

		map = new HashMap<String, String>();
		map.put("성명", "박시");
		map.put("나이", "32");
		map.put("이메일", "so485@daum.net");
		map.put("성별", "남자");
		list.add(map);

		map = new HashMap<String, String>();
		map.put("성명", "철수");
		map.put("나이", "42");
		map.put("이메일", "sfgdas@daum.net");
		map.put("성별", "남자");
		list.add(map);

		map = new HashMap<String, String>();
		map.put("성명", "의자");
		map.put("나이", "38");
		map.put("이메일", "dfs85@daum.net");
		map.put("성별", "여자");
		list.add(map);

		map = new HashMap<String, String>();
		map.put("성명", "컴터");
		map.put("나이", "44");
		map.put("이메일", "compu@daum.net");
		map.put("성별", "여자");
		list.add(map);

		map = new HashMap<String, String>();
		map.put("성명", "안경");
		map.put("나이", "25");
		map.put("이메일", "eye@daum.net");
		map.put("성별", "남자");
		list.add(map);

		map = new HashMap<String, String>();
		map.put("성명", "견성");
		map.put("나이", "28");
		map.put("이메일", "dig5@daum.net");
		map.put("성별", "남자");
		list.add(map);

		map = new HashMap<String, String>();
		map.put("성명", "너무");
		map.put("나이", "32");
		map.put("이메일", "gggg@daum.net");
		map.put("성별", "여자");
		list.add(map);

		map = new HashMap<String, String>();
		map.put("성명", "종이");
		map.put("나이", "38");
		map.put("이메일", "paper@daum.net");
		map.put("성별", "남자");
		list.add(map);

		method1(list);
		// method2(list);
		// method3(list);
	}

	static public void method1(List<Map<String, String>> list) {
		Map<String, String> map = new HashMap<String, String>();
		for (int i = 0; i < list.size(); i++) {
			//map = new HashMap<String, String>();
			map = list.get(i);

			System.out.println("성명 : " + map.get("성명"));
			System.out.println("나이 : " + map.get("나이"));
			System.out.println("이메일 : " + map.get("이메일"));
			System.out.println("성별 :" + map.get("성별"));
		}

	}

	static public void method2(List<Map<String, String>> list) {
		Map<String, String> map = new HashMap<String, String>();

		for (int i = 0; i < list.size(); i++) {
			map = new HashMap<String, String>();
			map = list.get(i);
			String gender = map.get("성별");
			String name = map.get("성명");
			switch (gender) {
			case "남자":
				System.out.println(name + "는 남자입니다.");
				break;
			case "여자":
				System.out.println(name + "는 여자입니다.");
				break;
			}

		}

	}

	static public void method3(List<Map<String, String>> list) {
		Map<String, String> map = new HashMap<String, String>();

		for (int i = 0; i < list.size(); i++) {
			map = new HashMap<String, String>();
			map = list.get(i);
			int age = Integer.parseInt((map.get("나이")));
			String name = map.get("성명");

			if (age >= 20 && age < 30) {
				System.out.println(name + "은 20대입니다.");
			} else if (age >= 30 && age < 40) {
				System.out.println(name + "은 30대입니다.");
			} else
				System.out.println(name + "은 40대 이상입니다.");

		}
	}

}

// //리스트에 있는 이름 차래대로 출력
// System.out.println(List);
// for(int i=0;i<List.size();i++) {
// System.out.println("성명: " + List.get(i)+ " 성별: "+ gender.get(i));
// }

/* [{성명 : 홍길동, 성별 : 남}, {성명 : 홍길동, 성별 : 남} ,{성명 : 홍길동, 성별 : 남}] */
