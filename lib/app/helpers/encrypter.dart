import 'dart:convert';
import 'dart:io';

import 'dart:typed_data';
import 'package:encrypt/encrypt.dart';
import 'package:quiz_birthday/app/data/models/challenge.dart';

class CryptoManager {
  static final key = Key.fromUtf8('bIvtur3i1jVGBqk8UreTE5SY1r5fwwjD');
  static final iv = IV.fromUtf8('eM1vBb2nICto7Bak');

  static Future<List<Challenge>> main() async {
    try {
      const encriptedFilePathO = 'assets/chh/challenge.solve';

      Uint8List encryptedContentRead =
          File(encriptedFilePathO).readAsBytesSync();
      String decryptedContent = decryptString(encryptedContentRead);

      final map = jsonDecode(decryptedContent);
      print("DONE");
      return (map['challengues'] as List)
          .map((item) => Challenge.fromMap(item as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print(e);
      return [];
    }
  }

  static Uint8List encryptString(String plainText) {
    final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
    final encrypted = encrypter.encrypt(plainText, iv: iv);
    return encrypted.bytes;
  }

  static String decryptString(Uint8List cipherText) {
    final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
    final decrypted = encrypter.decrypt(Encrypted(cipherText), iv: iv);
    return decrypted;
  }
}
