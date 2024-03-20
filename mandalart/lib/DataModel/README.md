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
## 만다라트 DTO 데이터
- 기존 Mandalart 객체만 가지고 애플리케이션을 관리하기 어렵다고 판단해서 제목 필드 및 도큐면트 아이디 필드를 추가
```dart
class MandalartDto {
  String _docId = '';
  int _mdType = -1;
  String _mdTitle = '';
  Mandalart _mandalart = Mandalart.init();

  Map<String, dynamic> toJson() {}
  static MandalartDto fromJson(Map<String, dynamic> json) {}
}
```