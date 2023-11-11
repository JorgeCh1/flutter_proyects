class ToDo{
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '1', todoText: "Buy Groceries", isDone: true),
      ToDo(id: '2', todoText: "Clean the house"),
      ToDo(id: '3', todoText: "Take out the trash"),
      ToDo(id: '4', todoText: "Go for a walk"),
      ToDo(id: '5', todoText: "Study English")
    ];
  }
}
