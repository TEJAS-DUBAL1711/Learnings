package DSA.Patterns.Pyramid;

import java.util.Scanner;

 class P1 {
    static void pyramid(int row){


    }
    static void pattern1(int rows){

        for(int i=0; i<rows;i++){
            for(int j=0;j<=i;j++){
                System.out.print("* ");
            }
            System.out.println();

        }

    }
     static void pattern2(int rows){

         for(int i=0; i<rows;i++){
             for(int j=0;j<=rows;j++){
                 System.out.print("* ");
             }
             System.out.println();

         }

     }
     static void pattern4(int rows){

         for(int i=1; i<=rows;i++){
             for(int j=1;j<=i;j++){
                 System.out.print(j+" ");
             }
             System.out.println();

         }

     }
     static void pattern3(int rows){
        int temp=rows;
//         for(int i=0; i<rows;i++){
//             for(int j=0; j<temp;j++){
//                 System.out.print("* ");
//             }
//             temp--;
//             System.out.println();
//         }
         for(int i=1; i<=rows;i++){

             for(int j=1; j<=rows-i+1;j++){
                 System.out.print("* ");
             }
             System.out.println();
         }

     }
     static void pattern5(int rows){
        int col=rows;
        for(int i=0; i<=rows*2;i++){
            int temp;
            if(i>=rows){
                temp=col;
                col--;
            }else{
                temp=i;
            }
            for(int j=0; j<=temp; j++){
                System.out.print("* ");
            }
            System.out.println();
        }


     }

     static void pattern6(int rows){
         int col=rows;
         int spaces;
         for(int i=0; i<=rows*2;i++){
             int temp;
             if(i>=rows){
                 temp=col;
                 col--;
             }else{
                 temp=i;
             }
             for(int j=0; j<=temp; j++){
                 System.out.print("* ");
             }
             System.out.println();
         }


     }
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter number of rows to generate Pattern: ");
        int rows=sc.nextInt();
       // pattern1(rows);
        pattern5(rows);

    }
}
