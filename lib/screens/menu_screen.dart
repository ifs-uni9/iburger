import 'package:flutter/material.dart';
import 'package:iBurger/screens/product_details_screen.dart';
import 'package:iBurger/widgets/list_item_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardápio'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Color(0xffff9f0a),
            ),
          ),
        ],
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ListItemWidget(
                onPressed: () {
                  Navigator.pushNamed(context, '/product-details');
                },
                image: 'assets/images/logo.png',
                title: 'Burger Name',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
