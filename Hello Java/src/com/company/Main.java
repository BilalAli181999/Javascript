package com.company;
import java.util.Scanner;

public class Main {

    public static class books
    {

        private String name;
        int copies;
        public books(String n,int c)
        {
            name= n;
            copies=c;
        }
        public books()
        {
            name= "he";
            copies=10;
        }

    }
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter Book Name");
        String n = input.nextLine();
        books b = new books(n,30);
        System.out.println(b.name);


    }
}
