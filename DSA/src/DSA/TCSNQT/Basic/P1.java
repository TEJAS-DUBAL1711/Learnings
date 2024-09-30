package DSA.TCSNQT.Basic;

//Reverse A array

class P1 {


    public static void main(String[] args) {

        int []arr=new int[]{1,2,3,4,5,6};
        for(int x:arr){
            System.out.println(x);
        }
        System.out.println("<<<<<<<<<<<<<<<After Reversed>>>>>>>>>>>");
        int start=0;
        int end=arr.length-1;
        while(start<end){
            int temp=arr[start];
            arr[start]=arr[end];
            arr[end]=temp;
            start++;
            end--;

        }
        for(int x:arr){
            System.out.println(x);
        }



    }
}
