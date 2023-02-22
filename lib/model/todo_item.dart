enum Priority { lowPriority, mediumPriority, highPriority }

class ToDoItem {
  final String id;
  final String todoName;
  final String todoDescription;
  final DateTime startDate;
  final DateTime endDate;
  final Priority priority;
  bool isCompleted;

  // constructor
  ToDoItem({
    required this.id,
    required this.todoName,
    required this.todoDescription,
    required this.startDate,
    required this.endDate,
    required this.priority,
    this.isCompleted = false,
  });
}
