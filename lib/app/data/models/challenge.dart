class Challenge {
  final String solve;
  final String text;
  final String imgPath;
  final String pdfPath;
  final bool contains;
  final bool pdf;
  final List<String> help;
  int helpIdx;
  Challenge({
    required this.solve,
    required this.text,
    required this.imgPath,
    required this.contains,
    required this.help,
    this.helpIdx = 0,
    this.pdf = false,
    this.pdfPath = "",
  });

  factory Challenge.fromMap(Map<String, dynamic> map) {
    return Challenge(
        solve: map['solve'] as String,
        text: map['text'] as String,
        imgPath: map['imgPath'] as String,
        contains: map['contains'] as bool,
        help: List<String>.from(map['help']),
        pdf: map['pdf'] as bool,
        pdfPath: map['pdfPath'] ?? "",
        helpIdx: map['helpIdx'] ?? 0);
  }
}
