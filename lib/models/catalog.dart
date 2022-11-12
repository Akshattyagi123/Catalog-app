class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
    id: "Akshat001",
    name: "iphone 12 pro",
    desc: "Apple iphone 12th generation",
    price: 999,
    color: "#33505a",
    image:"https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MHLN3?wid=1200&hei=630&fmt=jpeg&qlt=95&.v=1601352338000",
  ),
];
