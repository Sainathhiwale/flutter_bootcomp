import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/core/utils/app_routes.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/presentation/viewmodels/login_viewmodel.dart';
import 'package:provider/provider.dart';


class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginViewModel = Provider.of<LoginViewModel>(context);

    return Scaffold(
      appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
          backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(   // mor_2314
            controller: _usernameController,
              decoration: InputDecoration(    // mor_2314
                labelText: "Username",
                prefixIcon: Icon(Icons.email,color: Colors.purple,),
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(   // 83r5^_
              controller: _passwordController,
            decoration: InputDecoration(   // 83r5^_
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password, color: Colors.purple,),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  )
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            if (loginViewModel.isLoading) CircularProgressIndicator(),
            if (loginViewModel.errorMessage != null)
              Text(loginViewModel.errorMessage!, style: TextStyle(color: Colors.red)),
            if (loginViewModel.token != null)
              Text("Token: ${loginViewModel.token}", style: TextStyle(color: Colors.green)),
            SizedBox(height: 20),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white),
              onPressed: loginViewModel.isLoading
                  ? null
                  : () async {
                await loginViewModel.login(
                  _usernameController.text,
                  _passwordController.text,
                );
              },
              child: Text(
                "Login".toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}