package DSA.TCSNQT.Basic;
import java.util.*;
//Problem Statement:
//Write a program to count the frequency of each element in a given array of integers. The input will consist of an array of integers, and your task is to output each unique element along with its frequency.
//
//Input:
//An integer
//𝑁
//N, the size of the array.
//An array of
//𝑁
//N integers.
//Output:
//Each unique element of the array followed by its frequency, each on a new line.
//Example:
//makefile
//Copy code
//Input:
//6
//1 2 2 3 3 3
//
//Output:
//1 1
//2 2
//3 3
//Constraints:
//1
//≤
//𝑁
//≤
//1000
//1≤N≤1000
//−
//1000
//≤
//array[i]
//≤
//1000
//−1000≤array[i]≤1000

import java.util.*;

public class Frequency {

    public static void main(String[] args) {

        Scanner sc=new Scanner(System.in);
        System.out.println("Enter a size");

        int N=sc.nextInt();
        int[]arr=new int[N];

        System.out.println("Enter a elements");

        for(int i=0; i<arr.length;i++){
            arr[i]=sc.nextInt();

        }
        Map<Integer,Integer> mp=new HashMap<>();

        for(int x:arr){
            mp.put(x,mp.getOrDefault(x,0)+1);

        }
        for(Map.Entry<Integer, Integer> entry:mp.entrySet()){

            System.out.println(entry.getKey()+":"+ entry.getValue());


        }






    }
}
