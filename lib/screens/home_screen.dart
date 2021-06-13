import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iBurger/widgets/menu_item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isExitAction = false;

  void _onCancelPressed() {
    Navigator.of(context).pop();
  }

  void _onLeavePressed() {
    SystemNavigator.pop();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Deseja sair?'),
              content: Text('Se você sair perderá todo progresso feito.'),
              actions: [
                TextButton(
                    onPressed: _onCancelPressed, child: Text('Cancelar')),
                TextButton(onPressed: _onLeavePressed, child: Text('Sair')),
              ],
            );
          },
        );

        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          minimum: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              Expanded(
                child: GridView.count(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 2,
                  children: [
                    MenuItemWidget(
                      onPressed: () {
                        Navigator.pushNamed(context, '/order');
                      },
                      iconData: Icons.assignment,
                      iconColor: Color(0xff1c1c1e),
                      label: 'Comanda',
                      backgroundColor: Color(0xffff9f0a),
                      color: Color(0xff1c1c1e),
                    ),
                    MenuItemWidget(
                      onPressed: () {
                        Navigator.pushNamed(context, "/menu");
                      },
                      iconData: Icons.book,
                      iconColor: Color(0xffff9f0a),
                      label: 'Cardápio',
                      backgroundColor: Color(0xff22222B),
                      color: Color(0xffE5E5E5),
                    ),
                    MenuItemWidget(
                      onPressed: () {
                        Navigator.pushNamed(context, '/stock');
                      },
                      iconData: Icons.storage,
                      iconColor: Color(0xffff9f0a),
                      label: 'Estoque',
                      backgroundColor: Color(0xff22222B),
                      color: Color(0xffE5E5E5),
                    ),
                    MenuItemWidget(
                      onPressed: () {},
                      iconData: Icons.bar_chart,
                      iconColor: Color(0xffff9f0a),
                      label: 'Finanças',
                      backgroundColor: Color(0xff22222B),
                      color: Color(0xffE5E5E5),
                    ),
                    Container(),
                    MenuItemWidget(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Deseja sair?'),
                              content: Text(
                                  'Se você sair perderá todo progresso feito.'),
                              actions: [
                                TextButton(
                                    onPressed: _onCancelPressed,
                                    child: Text('Cancelar')),
                                TextButton(
                                    onPressed: _onLeavePressed,
                                    child: Text('Sair')),
                              ],
                            );
                          },
                        );
                      },
                      iconData: Icons.exit_to_app,
                      iconColor: Color(0xffff9f0a),
                      label: 'Sair',
                      backgroundColor: Color(0xff22222B),
                      color: Color(0xffE5E5E5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
