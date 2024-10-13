void main() {
  List<int> scores = [65, 45, 67, 79, 88, 38, 91, 53];

  List<int> passedScores = scores.where((score) => score >= 50).toList();

  print(passedScores);
  print('${passedScores.length} students passed');
}
