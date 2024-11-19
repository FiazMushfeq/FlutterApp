import 'package:flutter/material.dart';
import 'package:flutter_app/class/item_class.dart';
import 'package:flutter_app/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(title: 'Rocket', color: Colors.red),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(title: 'Travel', color: Colors.green),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(title: 'Space', color: Colors.blue),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(title: 'Yeah', color: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}
