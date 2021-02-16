import 'package:flutter/material.dart';

class Impressum extends StatefulWidget {
  @override
  _ImpressumState createState() => _ImpressumState();
}

class _ImpressumState extends State<Impressum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Impressum"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("(c) 2020 Verlag Heinrich Vogel in der Springer Fachmedien Münschen GmbH"),
            Container(
              height: 10,
            ),
            Text("Springer Fachmedien Münschen GmbH"),
            Text("Aschauer Straße 30"),
            Text("81549 Münschen"),
            Container(
              height: 10,
            ),
            Text("Handelsregister: Amtsgericht Münschen HRB 110956"),
            Text("Geschäftsführer: Peter Lehnert"),
            Text("Bankverbindung:"),
            Text("HypoVereinsbank Münschen"),
            Text("BLZ: 7216489 126784912"),
            Text("BIC: 7216489 126784912"),
            Text("IBAN: 7216 4849 1267 8491 1234 00"),
          ],
        ),
      ),
    );
  }
}
