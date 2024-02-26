class MandalartUser {
  String _name = '';
  String _collectionName = '';

  static final MandalartUser _instance = MandalartUser._internal();
  factory MandalartUser() => _instance;
  MandalartUser._internal();

  String get collection => _collectionName;
  set collection(String value) {
    _collectionName = value;
  }

  String get name => _name;
  set name(String value) {
    _name = value;
  }

  bool checkLogin() => _name.isNotEmpty ? true : false;
}