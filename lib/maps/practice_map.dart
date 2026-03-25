void main() {
  var marks = {"ali": 76, "khan": 89, "jhon": 20};
  var nums = [5, 12, 7, 20, 3];

  marks.forEach((key, value) {
    if (value < 50) {
      print(key);
    }
  });

  for (var numbers in nums) {
    if (numbers > 10) {
      print(numbers);
    }
  }
}
