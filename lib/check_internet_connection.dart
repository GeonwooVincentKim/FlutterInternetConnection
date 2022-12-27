import 'package:flutter/material.dart';

class CheckInternetConnection extends StatelessWidget {
  final bool isConnected;
  const CheckInternetConnection({
    this.isConnected = false,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isConnected ?
      Container(
        height: 20,
        width: MediaQuery.of(context).size.width,
        color: Colors.green,
        child: const Center(
          child:  Text(
            'Internet just connected',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ) : Container(
        height: 20,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: const Center(
          child:  Text(
            'No Internet Connection!!!',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      );
  }
}