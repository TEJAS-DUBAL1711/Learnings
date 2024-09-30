package DSA.Searching;
//find the given number in array
public class p1 {

    public static void main(String[] args) {

        int num=11;
        int[]arr=new int[]{1,2,3,4,5,6,7,8,9,11};
        int start=0;
        int end=arr.length-1;
        int found=0;

        while(start<=end){

            int mid=start+(end-start)/2;

            if(arr[mid]==num){
                System.out.println("Present");
                found=1;
                break;
            }else if(arr[mid]<num){
                start=mid+1;
            }else if(arr[mid]>num){
                end=mid-1;
            }

        }
        if(found==0){
            System.out.println("not found");
        }

    }
}
