import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedItem = 0;
  final itens = ['Burguers', 'Bebidas', 'Acompanhamentos'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      margin: EdgeInsets.only(left: 26),
      child: ListView.builder(
        itemCount: itens.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(right: 24),
            child: (selectedItem == index)
                ? Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/ellipse.svg',
                        height: 6,
                        width: 6,
                      ),
                      SizedBox(width: 7),
                      Text(
                        itens[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedItem = index;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          itens[index],
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
