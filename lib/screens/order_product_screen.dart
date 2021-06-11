import 'package:flutter/material.dart';
import 'package:iBurger/widgets/list_item_widget.dart';

class OrderProductScreen extends StatefulWidget {
  const OrderProductScreen({Key? key}) : super(key: key);

  @override
  _OrderProductScreenState createState() => _OrderProductScreenState();
}

class _OrderProductScreenState extends State<OrderProductScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color(0xff48484A),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'R\$\14,90',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.green,
                  ),
                  onPressed: () {},
                  child: Text('CONFIRMAR'),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Voltar'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.2,
                          color: const Color(0xFFFFFFFF),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(40),
                        child: Text(
                          '12',
                          style: TextStyle(fontSize: 48),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
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
              Padding(
                padding: const EdgeInsets.only(top: 8),
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
              Padding(
                padding: const EdgeInsets.only(top: 8),
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
              Padding(
                padding: const EdgeInsets.only(top: 8),
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
      ),
    );
  }
}
