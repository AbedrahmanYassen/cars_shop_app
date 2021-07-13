class Tabs {
  List<String> _listOfString = [];
  void addStrings() {
    _listOfString
      ..add(
        'COMBO',
      )
      ..add('FAVOURITS')
      ..add('RECOMMENEDE');
  }

  void clearTheTabs() {
    _listOfString.clear();
  }

  List<String> getListOfString() {
    return _listOfString;
  }
}
