import 'package:appname/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget(
      {Key? key, required this.item}) //? means it cannot be nullabale
      : assert(item != null), //to check whether the passe value is not null.
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        print("${item.name} pressed");
      },
      leading: Image.network(item.image), //leading is basically for image
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text(
        "\$${item.price}",
        textScaleFactor: 1.5,
        style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
