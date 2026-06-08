package hqw;

import java.util.List;

public class CountryList {
	
	private static List<Country> countries;
	
	public static List<Country> getCountries(){
		if (countries == null) {
			countries = DataLoader.loadCountries();
		}
		return countries;
	
	}

}
