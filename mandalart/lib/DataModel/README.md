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
## Mandalart DTO
```dart
class MandalartDto {
  String userId;
  String mandalartName;
  int mandalartSize;
  Mandalart mandalart;
}
```