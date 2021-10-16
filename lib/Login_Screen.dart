import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController controller_1 = TextEditingController();
  TextEditingController controller_2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsetsDirectional.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' Login',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller_1,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email address',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    print(value);
                  },
                  onFieldSubmitted: (value_2) {
                    print(value_2);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller_2,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.panorama_fish_eye),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    print(value);
                  },
                  onFieldSubmitted: (value_2) {
                    print(value_2);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                      child: Text(
                        "Login ",
                      ),
                      textColor: Colors.white,
                      onPressed: () {
                        print(controller_1.text);

                        print(controller_2.text);
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don\'t have an account  "),
                    TextButton(
                        onPressed: () {}, child: Text(" Regrist here  ")),
                  ],
                ),
              ],
            ),
          ),
          //),
        ),
      ),
    );
  }
}
