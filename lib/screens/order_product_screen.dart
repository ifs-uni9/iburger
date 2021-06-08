import 'package:flutter/material.dart';

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
                    primary: Color(0xffff9f0a),
                  ),
                  onPressed: () {},
                  child: Text('ADICIONAR'),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Voltar'),
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Container(),
      ),
    );
  }
}
