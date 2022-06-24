import 'package:burger_ui/models/burger.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

final burger = [
  Burger('Supernova', 'assets/images/burger.png', '28,00'),
  Burger('Eclipse', 'assets/images/black_burger1.png', '25,00'),
  Burger('Aurora', 'assets/images/chicken_burger.png', '23,00'),
  Burger('Quasar', 'assets/images/bacon_burger.png', '26,00'),
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
        final item = index % burger.length;
        return SizedBox(
          height: 214,
          width: 150,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(burger[item].image),
                ),
                Text(
                  burger[item].name,
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
                      'R\$ ${burger[item].price}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        MdiIcons.plusThick,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
