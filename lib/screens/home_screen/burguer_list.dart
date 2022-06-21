import 'package:flutter/material.dart';

class BurguersList extends StatefulWidget {
  const BurguersList({Key? key}) : super(key: key);

  @override
  _BurguersListState createState() => _BurguersListState();
}

class _BurguersListState extends State<BurguersList> {
  final int items = 8;
  @override
  Widget build(BuildContext context) {
    Widget burguer = Container(
      width: 130,
      child: Image.asset('assets/images/burger.png'),
    );
    return SliverGrid(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildBuilderDelegate((context, index) {
        return Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  elevation: 3,
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  color: Colors.blueGrey[800],
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          'Burguer',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Spacer(),
                            Text(
                              'R\$ 25,00',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 40,
                              height: 40,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 30,
              child: GestureDetector(
                onTap: () {},
                child: burguer,
              ),
            ),
          ],
        );
      }, childCount: items),
    );
    /* return SliverToBoxAdapter(
      child: Container(
        height: 500,
        margin: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: items,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: 240,
                    width: 200,
                    margin: EdgeInsets.only(
                        left: 20, right: index == items ? 20 : 0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45),
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        color: Colors.blueGrey[800],
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text(
                                'Burguer',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    'R\$ 25,00',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 55,
                    child: GestureDetector(
                      onTap: () {},
                      child: burguer,
                    ),
                  ),
                ],
              );
            }),
      ),
    ); */
  }
}
