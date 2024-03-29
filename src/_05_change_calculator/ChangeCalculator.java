package _05_change_calculator;
//    Copyright (c) The League of Amazing Programmers 2013-2017
//    Level 0


import javax.swing.JOptionPane;

/*
 * I have a pocket full of change. I hate doing math. Make me a program that
 * will calculate how much money I have without me having to use my brain. Then
 * make me a sandwich.
 */
public class ChangeCalculator {

	public static void main(String[] args) {

		// Ask the user how many nickels they have
		String coin = JOptionPane.showInputDialog("how many nickels do you have");
		// Convert their answer to an int using Integer.parseInt()
		int nickels = Integer.parseInt(coin);
		// Ask the user how many dimes they have, and convert their answer
		String coin2 = JOptionPane.showInputDialog("how many dimes do you have");
		int dimes = Integer.parseInt(coin2);
		// Ask the user how many quarters they have, and convert their answer
		String coin3 = JOptionPane.showInputDialog("how many quarters do you have");
		int quarters = Integer.parseInt(coin3);
		// Calculate how much money the user has and save it in a double variable 
		double nickel, dime, quarter, answer;
		nickel = nickels * 5;
		dime = dimes * 10;
		quarter = quarters * 25;
		answer = (nickel + dime + quarter)/100;
		// Tell the user how much money they have
		JOptionPane.showMessageDialog(null, "you have $" + answer);
	}
}

