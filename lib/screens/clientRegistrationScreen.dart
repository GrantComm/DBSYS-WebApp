import 'package:consulting_webapp_app/widgets/regularButton.dart';
import 'package:consulting_webapp_app/widgets/smallButton.dart';
import 'package:flutter/material.dart';

class ClientRegistrationScreen extends StatelessWidget {
  final _userFirstName = TextEditingController();
  final _userLastName = TextEditingController();
  final _userEmail = TextEditingController();
  final _userPassword = TextEditingController();
  final _userConfirmPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final FocusScopeNode _node = FocusScopeNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width / 50),
              child: SmallButton(
                  title: "Back",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Theme.of(context).colorScheme.primary),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 1.7,
              ),
              child: Text('JSG Consulting',
                  style: Theme.of(context).textTheme.titleLarge),
            ),
          ],
        ),
        Center(
            child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 7,
              bottom: MediaQuery.of(context).size.height / 7),
          child: Column(
            children: [
              Text(
                'Let\'s Connect!',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 1000,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 3,
                        color: Colors.black,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 2, left: 20),
                                  child: Text("First Name",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 2, left: 20),
                                  child: Container(
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        boxShadow: [BoxShadow(blurRadius: 2)],
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                        controller: _userFirstName,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "First Name cannot be blank";
                                          }
                                          return null;
                                        },
                                        textInputAction: TextInputAction.next,
                                        onEditingComplete: _node.nextFocus,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 2, left: 20),
                                  child: Text("Last Name",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 2, left: 20),
                                  child: Container(
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        boxShadow: [BoxShadow(blurRadius: 2)],
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                        controller: _userLastName,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Last Name cannot be blank";
                                          }
                                          return null;
                                        },
                                        textInputAction: TextInputAction.next,
                                        onEditingComplete: _node.nextFocus,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 2, left: 20),
                                  child: Text("Email Address",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 2, left: 20),
                                  child: Container(
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        boxShadow: [BoxShadow(blurRadius: 2)],
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                        controller: _userEmail,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Email cannot be blank";
                                          }
                                          return null;
                                        },
                                        textInputAction: TextInputAction.next,
                                        onEditingComplete: _node.nextFocus,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 2, left: 20),
                                  child: Text("Password",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 2, left: 20),
                                  child: Container(
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        boxShadow: [BoxShadow(blurRadius: 2)],
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: TextFormField(
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                        controller: _userPassword,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Password cannot be blank";
                                          }
                                          return null;
                                        },
                                        textInputAction: TextInputAction.next,
                                        onEditingComplete: _node.nextFocus,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 2, left: 20),
                                  child: Text("Confirm Password",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 2, left: 20),
                                  child: Container(
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        boxShadow: [BoxShadow(blurRadius: 2)],
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                        controller: _userConfirmPassword,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Field cannot be blank";
                                          }
                                          return null;
                                        },
                                        textInputAction: TextInputAction.next,
                                        onEditingComplete: _node.nextFocus,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 30, left: 20),
                          child: RegularButton(
                              title: "Create Account",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ClientRegistrationScreen()));
                              },
                              color: Theme.of(context).colorScheme.primary))
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ],
    ));
  }
}
