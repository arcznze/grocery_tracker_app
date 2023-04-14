import 'package:flutter/material.dart';
import 'category.dart';

class MyMenu extends StatefulWidget {
  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  final List<Category> categories = [
    Category(
      title: 'Frutas',
      items: ['Manzanas', 'Plátanos', 'Fresas', 'Piñas'],
    ),
    Category(
      title: 'Verduras',
      items: ['Lechugas', 'Zanahorias', 'Pepinos', 'Tomates'],
    ),
    Category(
      title: 'Carnes',
      items: ['Pollo', 'Carne de res', 'Cerdo', 'Pescado'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grocery List'),
        backgroundColor: Color.fromRGBO(255, 210, 76, 1),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return ExpansionTile(
            title: Text(categories[index].title),
            children: categories[index].items.map((item) {
              return ListTile(
                title: Text(item),
                onTap: () {},
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
