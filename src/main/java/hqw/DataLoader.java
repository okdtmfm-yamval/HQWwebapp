package hqw;

import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.util.Arrays;
import java.util.List;

import com.google.gson.Gson;

public class DataLoader {
	
	private static final String COUNTRY_URL =
	        "https://raw.githubusercontent.com/okdtmfm-yamval/Hello-Quantum-World/refs/heads/main/data/countries.json";

	    private static final String SURNAME_URL =
	        "https://raw.githubusercontent.com/okdtmfm-yamval/Hello-Quantum-World/refs/heads/main/data/surnames.json";

    public static List<Country> loadCountries() {
        try {
            Gson gson = new Gson();
            URL url = new URL(COUNTRY_URL);
            Reader reader = new InputStreamReader(url.openStream(), "UTF-8");
            Country[] countries = gson.fromJson(reader, Country[].class);
            return Arrays.asList(countries);
        } catch (Exception e) {
            e.printStackTrace();
            return List.of();
        }
    }

    public static List<Surname> loadSurnames() {
        try {
            Gson gson = new Gson();
            URL url = new URL(SURNAME_URL);
            Reader reader = new InputStreamReader(url.openStream(), "UTF-8");
            Surname[] surnames = gson.fromJson(reader, Surname[].class);
            return Arrays.asList(surnames);
        } catch (Exception e) {
            e.printStackTrace();
            return List.of();
        }
    }
}
