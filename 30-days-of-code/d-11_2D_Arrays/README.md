# Day 11: 2D Arrays

<https://www.hackerrank.com/challenges/30-2d-arrays/problem>

## Objective

Today, we're building on our knowledge of Arrays by adding another dimension. Check out the Tutorial
tab for learning materials and an instructional video!

### Context

Given a 6x6 2D Array, **A**:

``` text
1 1 1 0 0 0
0 1 0 0 0 0
1 1 1 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0
```

We define an hourglass in **A** to be a subset of values with indices falling in this pattern in **A**'s graphical representation:

``` text
a b c
  d
e f g
```

There are 16 hourglasses in **A**, and an *hourglass sum* is the sum of an hourglass'values.

### Task

Calculate the hourglass sum for every hourglass in **A**, then print the *maximum* hourglass sum.

### Input Format

There are 6 lines of input, where each line contains space-separated integers describing 2D Array **A**; every value in will be in **A** the inclusive range of -9 to 9.

### Constraints

``` text
-9 <= A[i][j] <= 9
0 <= i,j <= 5
```

### Output Format

Print the largest (maximum) hourglass sum found in **A**.

### Sample Input

```text
1 1 1 0 0 0
0 1 0 0 0 0
1 1 1 0 0 0
0 0 2 4 4 0
0 0 0 2 0 0
0 0 1 2 4 0
```

### Sample Output

    19

### Explanation

**A** contains the following hourglasses:

```text
1 1 1   1 1 0   1 0 0   0 0 0
  1       0       0       0
1 1 1   1 1 0   1 0 0   0 0 0

0 1 0   1 0 0   0 0 0   0 0 0
  1       1       0       0
0 0 2   0 2 4   2 4 4   4 4 0

1 1 1   1 1 0   1 0 0   0 0 0
  0       2       4       4
0 0 0   0 0 2   0 2 0   2 0 0

0 0 2   0 2 4   2 4 4   4 4 0
  0       0       2       0
0 0 1   0 1 2   1 2 4   2 4 0
```

The hourglass with the maximum sum (**19**) is:

``` text
2 4 4
  2
1 2 4
```