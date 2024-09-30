package DSA.Array;

public class p1 {


    public static void main(String[] args) {

        int[]arr=new int[]{1,0,0,1,1};

        int count=0;
        for(int i=0; i<arr.length;i++){

            int c=0;
            for(int j=i+1;j<arr.length;j++){

                if(arr[i]<arr[j]){
                    c++;

                }

            }
            if(c>0){
                count++;
            }
        }
        System.out.println(count);
    }
}
