import 'package:flutter/material.dart';

class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text(
          'Recuperar Contraseña',
          style: TextStyle(color: Colors.white), 
        ),
      ),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Página para recuperar contraseña',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
