/*{
  "class": "XII",
  "subjects":[ "Physics", "Chemistry", "Maths"]
  }*/

class Student{
  String standard;
  List<String> subject;

  Student({required this.standard, required this.subject});

  factory Student.fromJson(Map<String,dynamic> json){
    var subjectsFromJson=["subjects"];
    List<String> subjectsList=new List<String>.from(subjectsFromJson);
return Student(standard: json["class"],
subject: subjectsList);  
  }
}