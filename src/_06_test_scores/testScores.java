package _06_test_scores;

import javax.swing.JOptionPane;

public class testScores {
	
	public static void main(String[] args) {
	
		String score = JOptionPane.showInputDialog("what is your test score");
		
		double d = Double.parseDouble(score);
			
		
		System.out.println(d);
		
		if (d >= 90) {
			JOptionPane.showMessageDialog(null, "you did well");
		}
		else if (d < 90 && d >=80) {
			JOptionPane.showMessageDialog(null, "you did ok");
		}
		else if (d < 80 && d>=70) { 
			JOptionPane.showMessageDialog(null, "you did poorly");
		}
		else if (d < 70) {
			JOptionPane.showMessageDialog(null, "you did very poorly");
		}
		
	}
}
