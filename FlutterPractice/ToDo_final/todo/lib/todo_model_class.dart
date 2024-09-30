class ToDoModelClass {
  String title;
  String description;
  String date;
  int taskNo;
  ToDoModelClass(
    this.taskNo, 
   {
     
    required this.title,
    required this.description,
    required this.date,
  });

  Map<String, dynamic> todoModelMap() {
    return {
      'taskNo': taskNo,
      'title': title,
      'description': description,
      'date': date,
    };
  }
}
