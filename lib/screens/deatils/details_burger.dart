import 'package:flutter/material.dart';

class DetailsBurger extends StatelessWidget {
  const DetailsBurger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Padding topMenu() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {}, //=> Navigator.of(context).pop(),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff242329),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 28),
          topMenu(),
          Image.asset('assets/images/burger.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TÍTULO
                Text(
                  'Supernova',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),

                // DESCRIÇÃO
                Text(
                  'Pão especial, 2 hambúrgueres bovinos, uma fatia de queijo cheddar, bacon em fatias, tomate e cebola em rodelas, alface, ketchup e maionese. e mais abobrinha pra preencher todas as linhas.',
                  style: TextStyle(fontSize: 14, height: 1.4),
                ),
                SizedBox(height: 12),

                Row(
                  children: [
                    // ADICIONAR CARRINHO
                    Container(),

                    // PREÇO
                    Container(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
