import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff242329),
              image: DecorationImage(
                image: AssetImage('assets/images/sky.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/image.jpg'),
                    radius: 50,
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.camera_alt,
                        size: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Otávio Dias',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Item 1',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Item 2',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
