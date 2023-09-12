extension TimeConvert on int {
  String _convertDays() {
    return (this / 86400).floor().toString().padLeft(2, "0");
  }

  String _convertHours() {
    return ((this % 86400) / 3600).floor().toString().padLeft(2, "0");
  }

  String _convertMinutes() {
    return (((this % 86400) % 3600) / 60).floor().toString().padLeft(2, "0");
  }

  String _convertSeconds() {
    return (((this % 86400) % 3600) % 60).floor().toString().padLeft(2, "0");
  }

  String getCounterValue() {
    return "${_convertDays()} : ${_convertHours()} : ${_convertMinutes()} : ${_convertSeconds()}";
  }
}
