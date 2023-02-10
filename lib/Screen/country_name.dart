import 'package:flutter/material.dart';

class CountryList extends StatefulWidget {
  const CountryList({Key? key}) : super(key: key);

  @override
  State<CountryList> createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  int i = 0;
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

  // List color1 = [
  //
  //   Colors.purpleAccent,
  //   Colors.red,
  //   Colors.brown,
  //   Colors.pink,
  //   Colors.purpleAccent,
  //   Colors.red,
  //   Colors.brown,
  //   Colors.pink,
  //   Colors.purpleAccent,
  //   Colors.red,
  //   Colors.brown,
  //   Colors.pink,
  //   Colors.purpleAccent,
  //   Colors.red,
  //   Colors.brown,
  //   Colors.pink,
  //   Colors.purpleAccent,
  //   Colors.red,
  //   Colors.brown,
  //   Colors.pink,
  //
  // ];
  


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
            children: l1.asMap().entries
                .map(
                  (e) => CountryList(l1[e.key],e.key%2==0?Colors.red:Colors.yellow),
                )
                .toList()),
      ),
    );
  }

  Widget CountryList(String? name, Color? c1) {
    return Column(
      children: [
        SizedBox(
        height: 5,
    ),
      Container(
      height: 60,
      width: double.infinity,
      child: Center(
        child: Text(
          "$name",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: c1,
        ),
    ),
      ],
    );
  }
}
