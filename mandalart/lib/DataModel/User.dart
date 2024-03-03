class MandalartUser {
  String _name = '';
  String _collectionName = '';
  String _email = '';
  String _photoUrl = '';
  List<String> _idList = [];

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

  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String get photoUrl => _photoUrl;
  set photoUrl(String value) {
    _photoUrl = value;
  }

  List<String> get idList => _idList;
  set idList(List<String> value) {
    _idList = value;
  }

  bool checkLogin() => _name.isNotEmpty ? true : false;
}
