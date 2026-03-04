class DymmeList {
  final String name;
  final String id;
  final String Items;

  DymmeList({required this.name, required this.id, required this.Items});
}

List<DymmeList> offersList = [
  DymmeList(id: "1", name: "Order  #456765", Items: "4 items"),
  DymmeList(id: "2", name: "Order  #454569", Items: "4 items"),
  DymmeList(id: "3", name: "Order  #454809", Items: "4 items"),
];
