class Challenge {
  final String solve;
  final String text;
  final String imgPath;
  final String help, pdfPath;
  final bool contains, pdf;

  Challenge(
      {required this.solve,
      required this.text,
      required this.imgPath,
      required this.help,
      required this.contains,
      this.pdf = false,
      this.pdfPath = ""});

  factory Challenge.fromMap(Map<String, dynamic> map) {
    return Challenge(
      solve: map['solve'] as String,
      text: map['text'] as String,
      imgPath: map['imgPath'] as String,
      help: map['help'] as String,
      contains: map['contains'] as bool,
      pdf: map['pdf'] as bool,
    );
  }
}
