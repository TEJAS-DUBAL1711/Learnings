package DSA.Array;

 class MaxProductSubArray {


    public static void main(String[] args) {
        int[]arr=new int[]{1,2,3,4,5};

        int maxProduct=0;
        for(int i=0; i<arr.length;i++){
            for(int j=i;j<arr.length;j++) {
                int product=1;
                for (int k = i; k <= j; k++) {

                    product=product*arr[k];

                }
                if(product>maxProduct){
                    maxProduct=product;
                }
            }

        }
        System.out.println(maxProduct);
    }
}