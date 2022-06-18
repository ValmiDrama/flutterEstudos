import 'package:flutter/material.dart';
import 'package:mypetz/remote_config/custom_remote_confg.dart';
import 'package:mypetz/remote_config/custom_visible.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isLoading = false;

  void _incrementCounter() async {
    setState(() => _isLoading = true);
    await CustomRemoteConfig().forceFetch();
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomRemoteConfig().getValueOrDefault(
          key: 'isActiveBlue',
          defaultValue: false,
        )
            ? Colors.blue
            : Colors.red,
        title: Text(widget.title),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    CustomRemoteConfig()
                        .getValueOrDefault(
                          key: 'novaString',
                          defaultValue: 'defaultValue',
                        )
                        .toString(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  CustomVisibleRCWidget(
                    rmKey: 'show_container',
                    defaultValue: false,
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      width: 100,
                    ),
                  )
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
