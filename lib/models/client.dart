class Client {
  final String id;
  final String name;
  final String email;
  final String status;
  final List<String> workflowIds;

  Client({
    required this.id,
    required this.name,
    required this.email,
    required this.status,
    required this.workflowIds,
  });
}
