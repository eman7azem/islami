import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class SuraDetailsProvider extends ChangeNotifier {
  List<String> verses = [];

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    notifyListeners();
  }
}
