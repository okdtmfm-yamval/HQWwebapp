package hqw;

public class Country {
	
	private String name;
	private String code;
	
	public Country() {
		//Gsonが使うデフォルトコンストラクタ
	}
	
	public String getName() {
		return name;
	}
	
	public String getCode(){
		return code;
	}
	
	@Override
	public String toString() {
		return name;
	}

}
