  int sum(List<int> list) {
    int sum = 0;
    list.forEach((e) {
      sum += e;
    });
    return sum;
  }

  void main() {
    List<int> l = [1, 2, 3, 4, 5];

    int result = sum(l);
    print("$result");
  }