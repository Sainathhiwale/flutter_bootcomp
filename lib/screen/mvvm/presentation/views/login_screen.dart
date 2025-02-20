import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/core/utils/app_routes.dart';
import 'package:flutter_bootcamp_2025/screen/mvvm/presentation/viewmodels/login_viewmodel.dart';
import 'package:provider/provider.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginViewModel = Provider.of<LoginViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(    // mor_2314
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email,color: Colors.purple,),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  ),
              ),
              onChanged: loginViewModel.setEmail,
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(   // 83r5^_
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password, color: Colors.purple,),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  )
              ),
              obscureText: true,
              onChanged: loginViewModel.setPassword,
            ),
            SizedBox(height: 10),
            if (loginViewModel.isLoading) CircularProgressIndicator(),
            if (loginViewModel.errorMessage != null)
              Text(loginViewModel.errorMessage!, style: TextStyle(color: Colors.red)),
            SizedBox(height: 20),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white),
              onPressed: loginViewModel.isLoading
                  ? null
                  : () async {
                bool success = await loginViewModel.login();
                if (success) {
                  Navigator.pushReplacementNamed(context, AppRoutes.home);
                }
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
