import 'package:flutter/material.dart';
import 'package:flutter_demo_app/widgets/about_stateless_widget.dart';

class AboutTextFieldWidget extends StatefulWidget {
  const AboutTextFieldWidget({super.key});

  @override
  State<AboutTextFieldWidget> createState() => _AboutTextFieldWidgetState();
}

class _AboutTextFieldWidgetState extends State<AboutTextFieldWidget> {
  final usernameCtr = TextEditingController();
  final passwordCtr = TextEditingController();
  bool isHidePassword = true;

  var headline = "Login to our System";

  @override
  void initState() {
    super.initState();
    setState(() {
      headline = "Login to from initState()";
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
    usernameCtr.dispose();
    passwordCtr.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InteractiveWidget(),
              Center(
                // child: Text(
                //   "Login to our System",
                //   style: TextStyle(
                //     fontSize: 24,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                child: NewStatelessWidget(name: headline),
              ),
              SizedBox(height: 32),
              TextFormField(
                controller: usernameCtr,
                decoration: InputDecoration(
                  hintText: "Enter your username",
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  isDense: true,
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your username";
                  } else if (value.length < 4) {
                    return "Username must be at least 4 characters";
                  }
                },
              ),
              SizedBox(height: 16),
              TextField(
                controller: passwordCtr,
                obscureText: isHidePassword,
                onChanged: (value) {
                  print('password: $value');
                },
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  isDense: true,

                  prefixIcon: Icon(Icons.lock),
                  // suffixIcon: Icon(Icons.remove_red_eye),
                  suffixIcon: IconButton(
                    // condition ? true : false
                    icon: Icon(isHidePassword
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      print("show or hide password");
                      setState(() {
                        isHidePassword = !isHidePassword;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 56,
                      child: OutlinedButton(
                        onPressed: () {
                          print(usernameCtr.text);
                          setState(() {
                            headline = "Welcome ${usernameCtr.text}";
                          });

                          if (_formKey.currentState!.validate()) {
                            print("Form is valid");
                            // login to our system
                          } else {
                            print("Form is invalid");

                            // show snackbar
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Form is invalid"),
                              ),
                            );
                          }
                        },
                        child: Text("Login"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text("Username: ${usernameCtr.text}"),
                        SizedBox(height: 16),
                        Text("Password: ${passwordCtr.text}"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
