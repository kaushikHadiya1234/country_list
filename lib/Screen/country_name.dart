import 'package:flutter/material.dart';

class CountryList extends StatefulWidget {
  const CountryList({Key? key}) : super(key: key);

  @override
  State<CountryList> createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  List l1 = [
    "🇮🇳 India",
    "🇳🇵 Nepal",
    "🇸🇬 Singapore",
    "🇪🇸 Spain",
    "🇹🇬 Togo",
    "🇺🇲 U.S",
    "🇩🇿 Algeria",
    "🇦🇴 Angola",
    "🇦🇲 Armenia",
    "🇦🇺 Australia",
    "🇦🇹 Austria",
    "🇦🇿 Azerbaijan",
    "🇧🇸 Bahamas",
    "🇧🇾 Belarus",
    "🇧🇿 Belize",
    "🇧🇹 Bhutan",
    "🇧🇷 Brazil",
    "🇨🇳 China",
    "🇪🇬 Egypt",
    "🇫🇷 France",
  ];
  List color1 = [
    Colors.purpleAccent,
    Colors.red,
    Colors.brown,
    Colors.pink,
    Colors.purpleAccent,
    Colors.red,
    Colors.brown,
    Colors.pink,
    Colors.purpleAccent,
    Colors.red,
    Colors.brown,
    Colors.pink,
    Colors.purpleAccent,
    Colors.red,
    Colors.brown,
    Colors.pink,
    Colors.purpleAccent,
    Colors.red,
    Colors.brown,
    Colors.pink,
  ];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Of Country",
          style: TextStyle(
              fontSize: 30,
              color: Colors.red[900],
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Center(child: Icon(Icons.menu)),
        actions: [
          Center(child: Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            children: l1
                .map(
                  (e) => CountryList(l1[i], color1[i++]),
                )
                .toList()),
      ),
    );
  }

  Widget CountryList(String? name, Color? c1) {
    return Container(
      height: 100,
      width: double.infinity,
      color: c1,
      child: Center(
        child: Text(
          "$name",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
