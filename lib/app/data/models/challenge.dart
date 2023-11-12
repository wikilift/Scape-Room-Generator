class Challenge {
  String solve;
  String text;
  String imgPath;
  String help;
  bool contains;

  Challenge(
      {required this.solve, required this.text, required this.imgPath, required this.help, required this.contains});

  factory Challenge.fromMap(Map<String, dynamic> map) {
    return Challenge(
      solve: map['solve'] as String,
      text: map['text'] as String,
      imgPath: map['imgPath'] as String,
      help: map['help'] as String,
      contains: map['contains'] as bool,
    );
  }
}
