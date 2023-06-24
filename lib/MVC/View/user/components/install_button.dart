import 'package:flutter/material.dart';
class InstallButton extends StatelessWidget {
  const InstallButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0 / 2,
      ),
      child: ElevatedButton(onPressed: () {}, child: const Text("Install")),
    );
  }
}
