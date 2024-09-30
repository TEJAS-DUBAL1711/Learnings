
//1. Reverse a String
//Problem: Given a string, return the string in reverse order.
package DSA.String;

public class Program1 {


   static String reverseString(String str){
        int i=0;
        int j=str.length()-1;
        char []arr=str.toCharArray();
        while(i<j) {
            char temp=arr[i];
            arr[i]=arr[j];
            arr[j]=temp;
            i++;
            j--;

        }
        //Using String Builder
       //return new StringBuilder(str).reverse().toString();
        return String.copyValueOf(arr);


    }
    public static void main(String[] args) {

        String str="Tejas";
        String rev=  Program1.reverseString(str);
        System.out.println(rev);


    }
}
