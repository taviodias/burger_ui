import 'package:badges/badges.dart';

import 'burgers.dart';
import 'side_menu.dart';

import 'categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewHomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final int _items = 1;
  NewHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Color(0xff242329),
      drawer: SideMenu(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff6A359C).withOpacity(0.5),
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xff9969C7), Color(0xff6A359C)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Badge(
            showBadge: _items > 0,
            badgeContent: Text(
              '$_items',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            child: SvgPicture.asset(
              'assets/images/basket.svg',
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/images/sky.png',
              ),
            ),
            left: -150,
            top: -80,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28),
                topMenu(),
                SizedBox(height: 24),
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
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 12, top: 8),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //       IconButton(
                //         onPressed: () {},
                //         icon: Icon(
                //           Icons.location_on_outlined,
                //           color: Colors.white,
                //         ),
                //       ),
                //       Container(
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(50),
                //             gradient: LinearGradient(
                //               colors: [Color(0xff9969C7), Color(0xff6A359C)],
                //               begin: Alignment.topCenter,
                //               end: Alignment.bottomCenter,
                //             ),
                //             boxShadow: [
                //               BoxShadow(
                //                 color: Color(0xff6A359C).withOpacity(0.5),
                //                 blurRadius: 12,
                //                 offset: Offset(0, 6),
                //               ),
                //             ]),
                //         child: IconButton(
                //           onPressed: () {},
                //           icon: SvgPicture.asset('assets/images/basket.svg'),
                //         ),
                //       ),
                //       IconButton(
                //         onPressed: () {},
                //         icon: Icon(
                //           MdiIcons.piggyBankOutline,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ],
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
            onPressed: () => _key.currentState!.openDrawer(),
            icon: SvgPicture.asset(
              'assets/images/menu_icon.svg',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Badge(
              showBadge: _items > 0,
              position: BadgePosition.topEnd(top: 2, end: 2),
              padding: EdgeInsets.all(4),
              child: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
