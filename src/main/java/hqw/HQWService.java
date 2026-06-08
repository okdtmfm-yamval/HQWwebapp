package hqw;

import java.util.List;

public class HQWService {
	
	//ユーザーのPersonを作る
	public Person createUserPerson(String countryName, String surname) {
		
		//JSONから読み込んだ個にリストを取得
		List<Country> countries = CountryList.getCountries();
		
		//国名で検索
		Country country = countries.stream().filter(c -> c.getName().equals(countryName)).findFirst().orElse(null);
		
		//見つからなかった場合はJapanにする
		if (country == null) {
			country = countries.stream().filter(c -> c.getName().equals("Japan")).findFirst().orElse(null);
		}
		
		return new Person(surname, country);
	}
	
	//ランダムな相手の生成
	public Person createRandomPerson() {
		return PersonFactory.createRandomPerson();
	}
	
	//握手イベント
	public String handshake(Person p1, Person p2) {
		boolean success = Handshake.shakeHands(p1, p2);
		
		if (success) {
			return p1.getSurname() + "と" + p2.getSurname() + "はトンネル効果で🤝握手がすり抜けました！Hello Amazing World!";
		} else {
			return p1.getSurname() + "と" + p2.getSurname() + "は🤝握手しました！Hello Quantum World!";
		}
	}

	public String generate(String country, String surname) {
		// 例：相手を生成したメッセージを返す
		return "あなた (" + country + " / " + surname + ") の相手を生成しました！";
	}

}
