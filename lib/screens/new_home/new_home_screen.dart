import 'package:burger_ui/screens/new_home/burgers.dart';

import 'categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NewHomeScreen extends StatelessWidget {
  const NewHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff242329),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Opacity(
                opacity: 0.7,
                child: Image.asset(
                  'assets/images/milk_way.png',
                  height: 400,
                ),
              ),
              left: 50,
              top: -80,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  topMenu(),
                  SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: Text(
                      'Universo Burguer',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: Text(
                      'Sabor de outro mundo',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 38),
                  Categories(),
                  SizedBox(height: 8),
                  Expanded(
                    child: Burgers(),
                  ),
                  // SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12, top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                colors: [Color(0xff9969C7), Color(0xff6A359C)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff6A359C).withOpacity(0.5),
                                  blurRadius: 12,
                                  offset: Offset(0, 6),
                                ),
                              ]),
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/images/basket.svg'),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            MdiIcons.piggyBankOutline,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding topMenu() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/menu_icon.svg',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
