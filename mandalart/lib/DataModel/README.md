# 활용 데이터 정리
## 만다라트 데이터
```dart
class Mandalart {
    int level;
    String content;
    List<Mandalart>? specificGoals;
    
    String toJson(){}
    Mandalart JsonToMandalart(String json){}   
}
```
## 만다라트 User 데이터
```dart
class MandalartUser {
  String _name = '';
  String _collectionName = '';

  static final MandalartUser _instance = MandalartUser._internal();
  factory MandalartUser() => _instance;
  MandalartUser._internal();
}
```