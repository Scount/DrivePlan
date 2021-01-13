import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class MyDocuments extends StatefulWidget {
  MyDocuments({Key key}) : super(key: key);

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
            child: Text("Erste-Hilfe-Kurs"),
          ))),
      ResponsiveGridCol(
          xs: 12,
          sm: 6,
          child: Card(
              child: Container(
            height: 100,
            child: Text("Personalausweis/Reisepass"),
          ))),
      ResponsiveGridCol(
          xs: 12,
          sm: 6,
          child: Card(
              child: Container(
            height: 100,
            child: Text("Biometrisches Passbild"),
          ))),
      ResponsiveGridCol(
          xs: 12,
          sm: 6,
          child: Card(
              child: Container(
            height: 100,
            child: Text("Sehtest"),
          ))),
      ResponsiveGridCol(
          xs: 12,
          sm: 12,
          child: Card(
              child: Container(
            height: 100,
            child: Text("Prüfauftrag"),
          ))),
    ]));
  }

  Widget bills() {
    return DataTable(
      columns: [
        DataColumn(label: Text("Identifier")),
        DataColumn(label: Text("Zu zahlen")),
        DataColumn(label: Text("Gezahlt")),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text("Grundgebühr")),
          DataCell(Text("380,00€")),
          DataCell(Text("380,00€")),
        ]),
        DataRow(cells: [
          DataCell(Text("Theorie")),
          DataCell(Text("150,00€")),
          DataCell(Text("150,00€")),
        ]),
        DataRow(cells: [
          DataCell(Text("Material")),
          DataCell(Text("42,00€")),
          DataCell(Text("0,00€")),
        ])
      ],
    );
  }
}
