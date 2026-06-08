package hqw;

import java.util.Random;

public class Handshake {
	private static Random random = new Random();
	
	//超低確率イベントを作る（段階的に絞る）
	private static boolean isQuantumTunnel() {
		
		//100万分の1を10回通過→10＾-60の確率
		for (int i = 0; i < 2; i++) {
			int value = random.nextInt(2);
			if (value != 0) {
				return false;  //どこか外れたら失敗
			}
		}
		return true;  //全部通過したら奇跡！！
	}
	
	public static boolean shakeHands(Person p1, Person p2) {
		
		System.out.println(p1 + " and " + p2 + " are shaking hands...");
		
		if(isQuantumTunnel()) {
			System.out.println("✨Quantum Tunnel Occurred! Their hands passed through each other!");
			return true;
		}
		
		System.out.println("🤝Handshake successful!");
		return false;
	}

}
