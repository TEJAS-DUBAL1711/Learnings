package DSA.Array;
import java.util.*;
/*
Problem Statement
Given an array of pairs, find all symmetric pairs in it.

Step 1: Understanding and Visualization
Let's first understand what a symmetric pair is. A pair (a, b) is said to be symmetric to another pair (c, d) if a = d and b = c. */

import java.util.ArrayList;
import java.util.ArrayList;
import java.util.List;

public class SymmetricPairs {
    public static void main(String[] args) {
        int[][] pairs = {{1, 2}, {3, 5}, {2, 1}, {5, 3}, {4, 6}};

        List<int[]> symmetricPairs = findSymmetricPairsBruteForce(pairs);

        System.out.println("Symmetric pairs are:");
        for (int[] pair : symmetricPairs) {
            System.out.println("(" + pair[0] + ", " + pair[1] + ")");
        }
    }

    public static List<int[]> findSymmetricPairsBruteForce(int[][] pairs) {
        List<int[]> symmetricPairs = new ArrayList<>();

        for (int i = 0; i < pairs.length; i++) {
            for (int j = i + 1; j < pairs.length; j++) {
                // Check if pairs[i] and pairs[j] are symmetric
                if (pairs[i][0] == pairs[j][1] && pairs[i][1] == pairs[j][0]) {
                    symmetricPairs.add(pairs[i]);
                    symmetricPairs.add(pairs[j]);
                }
            }
        }

        return symmetricPairs;
    }
}


