package _07_sleepy_head;
//    Copyright (c) The League of Amazing Programmers 2013-2017
//    Level 0

import javax.swing.JOptionPane;


public class SleepyHead {


    public static void main(String[] args) {
        
        boolean isWeekday, isVacation;
        
        /* You MUST use the above boolean variables in your code */
        
       
         //Ask the user for these values using a confirm dialog like the one below
         int w = JOptionPane.showConfirmDialog(null, "Is it a weekday?", "Sleepy Head", JOptionPane.YES_NO_OPTION);
         int wend = JOptionPane.showConfirmDialog(null, "Is it a weekend?", "Sleepy Head", JOptionPane.YES_NO_OPTION);
         int vac = JOptionPane.showConfirmDialog(null, "Is it vacation?", "Sleepy Head", JOptionPane.YES_NO_OPTION);
         
         if (wend == 0 || vac == 0 && w == 1) {
        	 isVacation = true;
         }
         else if (w == 0 && wend == 1 && vac == 1) {
        	 isWeekday = true;
         }
         else if (w == 0 && wend == 1 && vac == 0) {
        	 isVacation = true;
         }
         if (isVacation = true) {
        	 JOptionPane.showMessageDialog(null, "“sleep in�?");
         }
         if (isWeekday = true) {
        	 JOptionPane.showMessageDialog(null, "get up�?");
         }
        /*
         * Print “sleep in�? if it is a vacation or a weekend. If it’s a weekday,
         * print “get up lazybones!�? If it is a weekday, and we are on vacation,
         * print “sleep in�?.
         */
         
         
    }
}
