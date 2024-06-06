void main() {
    List A = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
    List B = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
    List C = [[0, 0, 0], [0, 0, 0], [0, 0, 0]];

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            C[i][j] = A[i][j] + B[i][j];
        }
    }

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            print("${C[i][j]} ");
        }
        print("\n");
    }

    print("Matrix A:");
    print(A);

    print("Matrix B:");
    print(B);

    print("Result of addition:");
    print(C);
}