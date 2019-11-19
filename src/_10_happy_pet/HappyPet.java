package _10_happy_pet;
import javax.swing.JOptionPane;

public class HappyPet {
	
	// 2. Add the following variable to the next line: static int happinessLevel = 0;
	static int happinessLevel = 0;
	// this will be used to store the happiness of your pet
	void option1() {
		JOptionPane.showMessageDialog(null, "response 1");
		happinessLevel++;
	}
	void option2() {
		JOptionPane.showMessageDialog(null, "response 2");
		happinessLevel = happinessLevel + 2;
		
	}
	void option3() {
		JOptionPane.showMessageDialog(null, "response 3");
		happinessLevel = happinessLevel + 3;
	}
	
	public static void main(String[] args) {
		boolean repet = true;

		String pet = JOptionPane.showInputDialog("what kind of pet do you like to purchase");

			int task = JOptionPane.showOptionDialog(null, "what do you want to do to make your pet happy","REE", 0, JOptionPane.INFORMATION_MESSAGE, null,
					new String[] { "option1", "option2", "option3" }, null);
					System.out.println(task);
					
			if (task == 0) {
				option1();
			}
			else if (task == 1) {
				option2();
			}
			else if (task == 2) {
				option3();
			}

	}
	
}