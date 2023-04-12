class ReportModel{
  int userId;
  String category;
  String text;

  ReportModel({required this.userId,required this.category,required this.text});

  Map<String,dynamic> toJson (){
    return {
      "to_user_id":userId,
      "category":category,
      "text":text
    };
  }
}