package DSA.SortingAlgorithems;



import java.util.Arrays;

 class InsertionSort {

    public static void main(String[] args) {
        int[] arr = new int[]{6, 3, 2, 1, 5};
        int size = arr.length;
        int key = 0;
        int j = 0;
        for (int i = 0; i < size; i++) {
            j = i - 1;
            key = arr[i];

            while (j >= 0 && arr[j]>key) {
                   arr[j + 1] = arr[j];
                    j--;

                }
            arr[j + 1] = key;
            }

        System.out.println(Arrays.toString(arr));
        }



    }
