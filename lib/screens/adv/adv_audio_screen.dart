import 'package:flutter/material.dart';

class AdvAudioScreen extends StatefulWidget {
  @override
  _AdvAudioScreenState createState() => _AdvAudioScreenState();
}

class _AdvAudioScreenState extends State<AdvAudioScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width,
        height: 535,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Audio'),
            Text('rferi')
            ,Text('erkueri')
          ],
        ),

    );
  }
}
