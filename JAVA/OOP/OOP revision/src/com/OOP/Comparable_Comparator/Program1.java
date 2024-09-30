package com.OOP.Comparable_Comparator;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class Program1 {


   public static void main(String[] args){

       int[] arr={1,2,3,4,5,6};

       Arrays.sort(arr); // by default implementation for primitive sorting will happen in ascending order

       for(var x: arr){
           System.out.println(x);
       }


       Integer[] array={11,12,13,14,15};

       Arrays.sort(array);  // Integer implements Comparable
   }

}
