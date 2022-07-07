import 'package:flutter/material.dart';
import 'package:learn_lifecycle/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();
  void goBackWithInfo(){
    String text = controller.text.toString().trim();
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return HomePage(text: text,);
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
             TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: "Login"
              ),
              style: TextStyle(
                fontSize: 25,
                color: Colors.black
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: goBackWithInfo,
              child: const Text("Login", style: TextStyle(
                  fontSize: 25,
                  color: Colors.black
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
