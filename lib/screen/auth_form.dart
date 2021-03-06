import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget{
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Card(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nome',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'E-Mail'
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                    ),
                  ),
                  SizedBox(height: 12),
                  RaisedButton(
                    child: Text('Entrar'),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text('Criar uma nova conta?'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}