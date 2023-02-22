import 'package:flutter/material.dart';

enum AuthMode { signUp, logIn }

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, String> _authdata = {
    'email': '',
    'password': '',
  };
  final AuthMode _authMode = AuthMode.logIn;
  final _isLoading = false;
  final _passwoedController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final deviceSize = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: "Email"),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty || !value.contains('@')) {
                return 'Invalid E mail address';
              }
              return null;
            },
            onSaved: (value) {
              _authdata['email'] = value!;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: "password"),
            obscureText: true,
            controller: _passwoedController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "password is not right";
              }
              return null;
            },
            onSaved: (value) {
              _authdata['password'] = value!;
            },
          ),
          if (_authMode == AuthMode.signUp)
            TextFormField(
              enabled: _authMode == AuthMode.signUp,
              decoration: const InputDecoration(labelText: 'confirm password'),
              obscureText: true,
              validator: _authMode == AuthMode.signUp
                  ? (value) {
                      if (value != _passwoedController.text) {
                        return 'Password does not match';
                      }
                      return null;
                    }
                  : null,
            ),
          const SizedBox(
            height: 20.0,
          ),
          if (_isLoading)
            const CircularProgressIndicator()
          else
            ElevatedButton(
              // impement action
                onPressed: null,
                child: Text(_authMode == AuthMode.logIn ? "Log In" : "SIGN UP"))
        ],
      ),
    );
  }
}
