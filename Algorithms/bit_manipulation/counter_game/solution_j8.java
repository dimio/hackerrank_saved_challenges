import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    static String counterGame(long n) {
        //long mask = 0x8000000000000000L; //2^63 in hex //W
        //eq:
        //long mask = -9223372036854775808L; //2^63 //W
        long mask;
        int step = 0;
        for (int i=63; i >= 0; i--) {
            mask = 1L << i;
            //compare with 2 power i
            if ((n & mask) != 0) {
                //we max 2^i
                //step++;
                step = step ^ 1;
            }    
            n -= mask;
            //mask >>>= 1;
        }
        
        //return (step%2 == 0) ? "Richard" : "Louise";
        return ((step & 1) != 0) ? "Louise" : "Richard";
    }

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int t = in.nextInt();
        for(int a0 = 0; a0 < t; a0++){
            long n = in.nextLong();
            String result = counterGame(n-1);
            System.out.println(result);
        }
        in.close();
    }
}
