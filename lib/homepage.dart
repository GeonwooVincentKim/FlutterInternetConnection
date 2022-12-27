import 'package:flutter/material.dart';
import 'package:internet_checker/check_internet_connection.dart';
import 'package:internet_checker/internet_connected.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:provider/provider.dart';

import 'internet_not_connected.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Visibility(
              visible: Provider.of<InternetConnectionStatus>(context) ==
                  InternetConnectionStatus.disconnected,
              // child: CheckInternetConnection(),
              child: InternetNotAvailable()
            ),
            Visibility(
              visible: Provider.of<InternetConnectionStatus>(context) ==
                  InternetConnectionStatus.connected,
              // child: CheckInternetConnection(),
              child: InternetConnected()
            ),

            Provider.of<InternetConnectionStatus>(context) ==
                    InternetConnectionStatus.disconnected
                ? Column(
                    children: [
                      // Visibility(
                      //   visible: Provider.of<InternetConnectionStatus>(context) ==
                      //       InternetConnectionStatus.disconnected,
                      //   // child: const InternetNotAvailable(),
                      //   child: CheckInternetConnection(isConnected: false),
                      // ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Not connected',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                      )
                    ],
                  )

                : Column(
                    children: [
                      // Visibility(
                      //   visible: Provider.of<InternetConnectionStatus>(context) ==
                      //       InternetConnectionStatus.connected,
                      //   // child: const InternetNotAvailable(),
                      //   child: CheckInternetConnection(isConnected: true),
                      // ),
                      // Expanded(
                      //   child: 
                      // )
                      Center(
                          child: Text(
                            'Connected',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
