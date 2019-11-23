package _10_happy_pet;
import javax.swing.JOptionPane;

public class HappyPet {
	
	// 2. Add the following variable to the next line: static int happinessLevel = 0;
	static int happinessLevel = 0;
	// this will be used to store the happiness of your pet
	static void option1() {
		JOptionPane.showMessageDialog(null, "response 1");
		happinessLevel++;
	}
	static void option2() {
		JOptionPane.showMessageDialog(null, "response 2");
		happinessLevel = happinessLevel + 2;
		
	}
	static  void option3() {
		JOptionPane.showMessageDialog(null, "response 3");
		happinessLevel = happinessLevel + 3;
	}
	
	public static void main(String[] args) {
		

		String pet = JOptionPane.showInputDialog("what kind of pet do you like to purchase");
		for (int i=0; i<100; i++) {
			
			int task = JOptionPane.showOptionDialog(null, "what do you want to do to make your pet happy","REE", 0, JOptionPane.INFORMATION_MESSAGE, null,
					new String[] { "option1", "option2", "option3" }, null);
								
			if (task == 0) {
				option1();
				System.out.println(happinessLevel);
			}
			else if (task == 1) {
				option2();
				System.out.println(happinessLevel);
			}
			else if (task == 2) {
				option3();
				System.out.println(happinessLevel);
			}
			
			if(happinessLevel >= 10) {
				JOptionPane.showMessageDialog(null, pet + " happiness level filled");
				System.out.println(happinessLevel);
				break;	
			}

		}
	}	
}