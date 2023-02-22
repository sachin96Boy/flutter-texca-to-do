import 'package:flutter/material.dart';

import 'package:to_do_tecxa_mobile/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: deviceSize.height,
            width: deviceSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: const Text("TO Do mobile App - Tecxa"),
                  ),
                ),
                const Flexible(child: LoginForm())
              ],
            ),
          )
        ],
      ),
    );
  }
}
