class DummyOr {
  final String name;
  final String id;

  DummyOr({required this.name, required this.id});
}

List<DummyOr> offersOrder = [
  DummyOr(id: "1", name: "Processing"),
  DummyOr(id: "2", name: "Shipped"),
  DummyOr(id: "3", name: "Delivered"),
  DummyOr(id: "4", name: "Returned"),
  DummyOr(id: "5", name: "Canceled"),
];
