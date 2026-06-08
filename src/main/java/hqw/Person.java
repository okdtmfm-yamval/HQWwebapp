package hqw;

public class Person {
	
	private String surname;
	private Country country;
	
	public Person(String surname, Country country) {
		this.surname = surname;
		this.country = country;
	}
	
	public void greet() {
		System.out.println("Hello! My name is " + surname + " from " + country.getName() + ".");
	}
	
	@Override
	public String toString() {
		return surname + "(" + country.getName() + ")";
	}

	public String getSurname() {
		return surname;
	}
	
	public Country getCountry() {
		return country;
	}

}
