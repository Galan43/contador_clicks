import 'package:counter_test/pages/password_recovery_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Contenido(),
        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade300, Colors.blue],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({Key? key}) : super(key: key);

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Bienvenido a tu cuenta',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              letterSpacing: 1.5,
            ),
          ),
          Datos(),
          SizedBox(
            height: 5,
          ),
          Privacidad(),
        ],
      ),
    );
  }
}

class Datos extends StatefulWidget {
  const Datos({Key? key}) : super(key: key);

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Email',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ingresa tu correo electronico',
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Password',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            obscureText: showPassword,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Contraseña',
              suffixIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye_outlined),
                onPressed: () => {
                  setState(() {
                    showPassword == true
                        ? showPassword = true
                        : showPassword = false;
                  }),
                },
              ),
            ),
          ),
          const Remember(),
          const SizedBox(
            height: 30,
          ),
          const Botones(),
        ],
      ),
    );
  }
}

class Remember extends StatefulWidget {
  const Remember({Key? key}) : super(key: key);

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool ischecked = true;

  void handlePasswordForgotten() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PasswordRecoveryPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: ischecked,
          onChanged: (value) {
            setState(() {
              ischecked = value ?? false;
            });
          },
        ),
        const Text(
          'Recuérdame',
          style: TextStyle(fontSize: 12),
        ),
        const Spacer(),
        TextButton(
          onPressed: handlePasswordForgotten, // Llama a la función definida arriba
          child: const Text(
            '¿Olvidó su contraseña?',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () => {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff142047),
              ),
            ),
            child: const Text(
              'Iniciar Sesion',
              style: TextStyle(
                color: Colors.white
                )
              ),
          ),
        ),
        const SizedBox(
          height: 25,
          width: double.infinity,
          ),
        const Text(
          'O ingresa con',
        style: TextStyle(
          color: Colors.grey
        ),
        ),
        const SizedBox(
          height: 25,
          width: double.infinity,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: () => {}, 
            child: const Text(
              'Google',
              style: TextStyle(
                color: Color(0xff142047),
                fontWeight: FontWeight.bold,
                fontSize: 18
              )
            )
            ),
        ),
        const SizedBox(
          height: 15,
          width: double.infinity,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: () => {}, 
            child: const Text(
              'Facebook',
              style: TextStyle(
                color: Color(0xff142047),
                fontWeight: FontWeight.bold,
                fontSize: 18
              )
            )
            ),
        ),
      ],
    );
  }
}


class Privacidad extends StatefulWidget {
  const Privacidad({Key? key}) : super(key: key);

  @override
  State<Privacidad> createState() => _PrivacidadState();
}

class _PrivacidadState extends State<Privacidad> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:[
        TextButton(
          onPressed: () =>{},
          child: const Text(
          'Derechos de privacidad 2024',
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
              )
            ),
          ),
        ],  
      ),
    );
  }
}
