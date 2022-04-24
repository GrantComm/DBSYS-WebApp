import 'package:consulting_webapp_app/screens/clientLoginScreen.dart';
import 'package:consulting_webapp_app/screens/consultantLoginScreen.dart';
import 'package:consulting_webapp_app/widgets/largeButton.dart';
import 'package:flutter/material.dart';

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 5,
            bottom: MediaQuery.of(context).size.height / 5),
        child: Column(
          children: [
            Text(
              'JSG Consulting',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Consulting Made Simple',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, bottom: 8, right: 20),
                      child: LargeButton(
                          title: "Client",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ClientLoginScreen()));
                          },
                          color: Theme.of(context).colorScheme.primary)),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, bottom: 8, left: 20),
                    child: LargeButton(
                        title: "Consultant",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ConsultantLoginScreen()));
                        },
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
