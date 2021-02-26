import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class MyDocuments extends StatefulWidget {
  MyDocuments({Key key}) : super(key: key);

  static String routeName = '/my_documents';

  @override
  _MyDocumentsState createState() => _MyDocumentsState();
}

class _MyDocumentsState extends State<MyDocuments> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Dokumentenmappe"),
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text("Dokumente"),
                  ),
                  Tab(
                    child: Text("Rechnungen"),
                  )
                ],
              ),
            ),
            body: TabBarView(children: [documents(), bills()])));
  }

  Widget documents() {
    return SingleChildScrollView(
        child: ResponsiveGridRow(children: [
      ResponsiveGridCol(
        xs: 12,
        sm: 6,
        child: Card(
          child: Container(
            height: 100,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Erste-Hilfe-Kurs"),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ),
          ),
        ),
      ),
      ResponsiveGridCol(
        xs: 12,
        sm: 6,
        child: Card(
          child: Container(
            height: 100,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Personalausweis/Reisepass"),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ),
          ),
        ),
      ),
      ResponsiveGridCol(
        xs: 12,
        sm: 6,
        child: Card(
          child: Container(
            height: 100,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Biometrisches Passbild"),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ),
          ),
        ),
      ),
      ResponsiveGridCol(
        xs: 12,
        sm: 6,
        child: Card(
          child: Container(
            height: 100,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Sehtest"),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ),
          ),
        ),
      ),
      ResponsiveGridCol(
        xs: 12,
        sm: 12,
        child: Card(
          child: Container(
            height: 100,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Prüfauftrag"),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ),
          ),
        ),
      ),
    ]));
  }

  Widget bills() {
    return Column(
      children: [
        Container(
          height: 50,
          color: Colors.blueAccent,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Text("Identifier", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                Expanded(
                    flex: 1,
                    child: Text("Zu zahlen", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                Expanded(
                    flex: 1, child: Text("Gezahlt", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)))
              ],
            ),
          ),
        ),
        Container(
          height: 50,
          color: Colors.green[100],
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Row(
              children: [
                Expanded(flex: 1, child: Text("Grundgebühr")),
                Expanded(flex: 1, child: Text("380,00€")),
                Expanded(flex: 1, child: Text("380,00€"))
              ],
            ),
          ),
        ),
        Container(
          height: 1,
          color: Colors.grey,
        ),
        Container(
          height: 50,
          color: Colors.green[100],
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Row(
              children: [
                Expanded(flex: 1, child: Text("Theorie")),
                Expanded(flex: 1, child: Text("150,00€")),
                Expanded(flex: 1, child: Text("150,00€"))
              ],
            ),
          ),
        ),
        Container(
          height: 1,
          color: Colors.grey,
        ),
        Container(
          height: 50,
          color: Colors.red[100],
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Row(
              children: [
                Expanded(flex: 1, child: Text("Material")),
                Expanded(flex: 1, child: Text("42,00€")),
                Expanded(flex: 1, child: Text("0,00€"))
              ],
            ),
          ),
        )
      ],
    );
  }
}
