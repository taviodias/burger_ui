import 'package:burger_ui/models/burger.dart';
import 'package:burger_ui/screens/deatils/details_burger.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

final burgers = [
  Burger(
    'Supernova',
    'assets/images/burger.png',
    28,
    'Pão especial, 2 hambúrgueres bovinos, uma fatia de queijo cheddar, bacon em fatias, tomate e cebola em rodelas, alface, ketchup e maionese.',
  ),
  Burger(
    'Eclipse',
    'assets/images/black_burger1.png',
    25,
    'Pão preto especial, um hámburguer bovino, uma fatia de queijo, rodelas de picles, tomate e cebola, alface, ketchup e maionese',
  ),
  Burger(
    'Aurora',
    'assets/images/chicken_burger.png',
    23,
    'Pão especial, um hámburguer de frango, tomate em rodelas, alface e maionese.',
  ),
  Burger(
    'Quasar',
    'assets/images/bacon_burger.png',
    26,
    'Pão especial, 2 hámburgueres bovinos, 2 fatias de queijo, fatias de bacon, rodelas de picles, mostarda e ketchup.',
  ),
];

class Burgers extends StatelessWidget {
  const Burgers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(left: 26, right: 26),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 10,
        childAspectRatio: 1 / 1.05,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        final item = index % burgers.length;
        return SizedBox(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsBurger(
                    burger: burgers[index],
                  ),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(burgers[item].image),
                  ),
                  Text(
                    burgers[item].name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'R\$ ${burgers[item].price},00',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Color(0xff191919),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
