import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Statistik extends StatefulWidget {
  Statistik({Key key}) : super(key: key);

  static String routeName = '/statistik';

  @override
  _StatistikState createState() => _StatistikState();
}

class _StatistikState extends State<Statistik> {
  bool grundwissen = false;
  bool motorrad = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Statistik"),
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.bar_chart),
                  ),
                  Tab(
                    child: Icon(Icons.playlist_add_check),
                  )
                ],
              ),
            ),
            body: new OrientationBuilder(
              builder: (context, orientation) =>
                  TabBarView(children: [fragenStatistik(orientation), pruefungsSimulationen()]),
            )));
  }

  Widget fragenStatistik(Orientation orientation) {
    if (orientation == Orientation.portrait)
      return Column(children: [Expanded(child: fragenStatistikChart()), Expanded(child: fragenStatistikBody())]);
    else
      return Row(children: [Expanded(child: fragenStatistikChart()), Expanded(child: fragenStatistikBody())]);
  }

  Widget fragenStatistikChart() {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(5),
      child: BarChart(BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 100,
          titlesData: FlTitlesData(
            bottomTitles: SideTitles(
              showTitles: true,
              margin: 20,
              getTitles: (double value) {
                switch (value.toInt()) {
                  case 0:
                    return "Richtig";
                  case 1:
                    return "Falsch";
                  case 2:
                    return "Ungelöst";
                  default:
                    return "error";
                }
              },
            ),
            topTitles: SideTitles(
              showTitles: true,
              margin: 20,
              getTitles: (double value) {
                switch (value.toInt()) {
                  case 0:
                    return "20";
                  case 1:
                    return "10";
                  case 2:
                    return "100";
                  default:
                    return "error";
                }
              },
            ),
            leftTitles: SideTitles(showTitles: false),
            show: true,
          ),
          borderData: FlBorderData(show: false),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(
                  y: 20,
                  width: 20,
                  colors: [Colors.green],
                  backDrawRodData: BackgroundBarChartRodData(show: true, y: 100, colors: [Colors.grey[200]]),
                  borderRadius: BorderRadius.circular(1),
                )
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                  y: 10,
                  width: 20,
                  colors: [Colors.red],
                  backDrawRodData: BackgroundBarChartRodData(show: true, y: 100, colors: [Colors.grey[200]]),
                  borderRadius: BorderRadius.circular(1),
                )
              ],
            ),
            BarChartGroupData(
              x: 2,
              barRods: [
                BarChartRodData(
                  y: 80,
                  width: 20,
                  colors: [Colors.grey],
                  backDrawRodData: BackgroundBarChartRodData(show: true, y: 100, colors: [Colors.grey[200]]),
                  borderRadius: BorderRadius.circular(1),
                )
              ],
            ),
          ])),
    ));
  }

  Widget fragenStatistikBody() {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Fragenstatistik", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          Divider(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                CheckboxListTile(title: Text("Alle Themengebiete auswerten"), value: true, onChanged: (value) {}),
                ListTile(
                  title: Text("Themengebiete Grundwissen"),
                  tileColor: Colors.blueAccent,
                ),
                CheckboxListTile(title: Text("Test"), value: true, onChanged: (value) {}),
                CheckboxListTile(title: Text("Test"), value: true, onChanged: (value) {}),
                CheckboxListTile(title: Text("Test"), value: true, onChanged: (value) {}),
                CheckboxListTile(title: Text("Test"), value: true, onChanged: (value) {}),
                CheckboxListTile(title: Text("Test"), value: true, onChanged: (value) {}),
                CheckboxListTile(title: Text("Test"), value: true, onChanged: (value) {}),
                ListTile(
                  title: Text("Themengebiete Motorrad"),
                  tileColor: Colors.blueAccent,
                ),
                CheckboxListTile(title: Text("Test"), value: true, onChanged: (value) {}),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget pruefungsSimulationen() {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Prüfungssimultationen",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: DataTable(
                columnSpacing: 20,
                headingRowColor: MaterialStateProperty.resolveWith<Color>((states) => Colors.blueAccent),
                columns: const <DataColumn>[
                  DataColumn(
                      label: Text(
                    "Datum",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )),
                  DataColumn(
                      label: Text(
                    "Klasse",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )),
                  DataColumn(
                      label: Text(
                    "Fehlerpunkte",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )),
                  DataColumn(
                      label: Text(
                    "Ergebnis",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  )),
                ],
                rows: const <DataRow>[
                  DataRow(cells: <DataCell>[
                    DataCell(Text("12.12.2020")),
                    DataCell(Text("B")),
                    DataCell(Text("42")),
                    DataCell(Text("Bestanden")),
                  ])
                ]),
          )
        ],
      ),
    );
  }
}
