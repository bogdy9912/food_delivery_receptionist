import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_receptionist/src/actions/auth/index.dart';
import 'package:food_delivery_receptionist/src/actions/index.dart';
import 'package:food_delivery_receptionist/src/models/index.dart';
import 'package:food_delivery_receptionist/src/presentation/mixins/dialog_mixin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with DialogMixin {
  final TextEditingController _email = TextEditingController();

  final TextEditingController _password = TextEditingController();

  void _response(AppAction action) {
    if (action is LoginSuccessful) {
      print('SUCCESS');
      //
    } else {
      if (action is LoginError) {
        print(action.error);
        showErrorDialog(context, 'Login error', action.error);
        //
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LOGIN'),
        ),
        body: Form(
          child: Builder(
            builder: (BuildContext context) => SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _email,
                    decoration: const InputDecoration(labelText: 'email'),
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value) {
                      if (value == null || !value.contains('@') || !value.contains('.')) {
                        return 'Email invalid';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _password,
                    decoration: const InputDecoration(labelText: 'password'),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    validator: (String? value) {
                      if (value == null || value.isEmpty || value.length < 6) {
                        return 'Parola prea scurta';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final bool valid = Form.of(context)!.validate();

                      if (valid) {
                        StoreProvider.of<AppState>(context)
                            .dispatch(Login(email: _email.text, password: _password.text, response: _response));
                      }
                    },
                    child: const Text('LOGIN'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
