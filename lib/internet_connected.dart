import 'package:flutter/material.dart';

class InternetConnected extends StatelessWidget {
  const InternetConnected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: MediaQuery.of(context).size.width,
      color: Colors.green,
      child: const Center(
        child:  Text(
          'Internet just connected',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}