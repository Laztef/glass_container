import 'package:crystal_container/pages/widget/glass_container.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: SweepGradient(
              stops: [.05, .25, .45, .55, .75, .95],
              colors: [
                Colors.black,
                Colors.blue,
                Colors.black,
                Colors.black,
                Colors.purple,
                Colors.black,
              ],
            ),
          ),
        ),
        Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.width * .7,
            child: GlassContainer(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/github.webp", height: 50, width: 50),
                    Text(
                      'Bienvenido a "Tu app"',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Nombre de usuario",
                        labelStyle: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Contraseña",
                        labelStyle: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Iniciar Sesión"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "¿No estás registrado?. ¡Registrate!",
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
