import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Center(child: Image.asset("images/102.png")),
          ),
          Text(
            "Hello",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.purple.shade900),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                    cursorColor: Colors.indigo.shade900,
                    decoration: const InputDecoration(
                        hintText: "Username",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))))),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  cursorColor: Colors.indigo.shade900,
                  decoration: const InputDecoration(
                      hintText: "email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 4),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    obscureText: true,
                    cursorColor: Colors.purple.shade900,
                    decoration: const InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))))),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                  child: Row(
                    children: [
                      const Text(
                        "if you haven't account ",
                        style: TextStyle(fontSize: 15),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("SignUp");
                        },
                        child: Text(
                          "Click here",
                          style: TextStyle(
                              color: Colors.indigo.shade900,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple.shade900,
                    minimumSize: const Size(180, 50),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
          ),
        ]),
      ),
    );
  }
}
