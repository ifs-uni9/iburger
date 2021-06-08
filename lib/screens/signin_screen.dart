import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String username = "";
  String password = "";
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 56),
                child: Center(
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 24, top: 100),
                      child: TextFormField(
                        enabled: !isLoading,
                        style: isLoading
                            ? TextStyle(color: Colors.grey)
                            : TextStyle(color: Colors.white),
                        decoration: InputDecoration(hintText: 'Usuário'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, digite um nome de usuário.';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 64),
                      child: TextFormField(
                        enabled: !isLoading,
                        style: isLoading
                            ? TextStyle(color: Colors.grey)
                            : TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Senha',
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor, digite uma senha.';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color(0xffff9f0a).withOpacity(0.2),
                                blurRadius: 16,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Color(0xFFFF9F0A),
                              onPrimary: Color(0xFF1C1C1E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.green,
                                    content: Text(
                                      'Bem vindo(a) novamente!',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                );

                                setState(() {
                                  isLoading = !isLoading;
                                });

                                Navigator.pushReplacementNamed(
                                    context, '/home');
                              }
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: isLoading
                                  ? SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        valueColor: AlwaysStoppedAnimation(
                                          Color(0xff1c1c1e),
                                        ),
                                      ),
                                    )
                                  : Text('Entrar na conta'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
