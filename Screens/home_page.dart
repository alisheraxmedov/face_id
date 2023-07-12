import 'package:faceid/Components/component.dart';
import 'package:flutter/material.dart';

class FaceId extends StatefulWidget {
  const FaceId({super.key});

  @override
  State<FaceId> createState() => _FaceIdState();
}

class _FaceIdState extends State<FaceId> {
  bool authenticated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(199, 154, 241, 186),
      appBar: AppBar(
        title: const Text(
          "Face Id",
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, letterSpacing: 6.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber.shade400,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
              onPressed: () async {
                final authenticate = await LocalAuth.authenticate();
                setState(
                  () {
                    authenticated = authenticate;
                  },
                );
              },
              child: const Text("Authenticate"),
            ),
            if (authenticated) const Text("You are authenticate"),
            if (authenticated)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade400,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
                onPressed: () async {
                  setState(
                    () {
                      authenticated = false;
                    },
                  );
                },
                child: const Text("Log out"),
              ),
          ],
        ),
      ),
    );
  }
}
