package hqw;

import java.util.List;
import java.util.Random;

public class PersonFactory {
	
	private static Random random = new Random();
	
	public static Person createRandomPerson() {
		
		//①JSONから読み込んだ国リストを取得
		List<Country> countries = CountryList.getCountries();
		Country country = countries.get(random.nextInt(countries.size()));
		
		//②JSONから読み込んだ苗字リスト
		List<Surname> surnames = DataLoader.loadSurnames();
		
		//③選んだ国に対応する苗字だけを抽出する
		List<Surname> filtered =surnames.stream().filter(s -> s.getCountry().equals(country.getName())).toList();
		
		//④ランダムに苗字を選ぶ
		Surname surname = filtered.get(random.nextInt(filtered.size()));
		
		//④Personを生成して返す
		return new Person(surname.getSurname(), country);
	}

}
