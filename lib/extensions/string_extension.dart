extension UtfConvert on String {
  String convertToUtf8() {
    return replaceAll(" ", "%20");
  }

  String convertContactNumber() {
    return replaceAll("+", "%2b");
  }
}
