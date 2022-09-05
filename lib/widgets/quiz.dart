import 'package:flutter/material.dart';

class nomain extends StatefulWidget {
  @override
  State<nomain> createState() => _nomainState();
}

class _nomainState extends State<nomain> {

  List<Map<String, dynamic>> savoljavob = [
    {
      "savol": "1. Yoshing nechida?",
      "javoblar": [
        {"javob": "25", "togri": true},
        {"javob": "34", "togri": false},
        {"javob": "23", "togri": false},
        {"javob": "12", "togri": false}
      ]
      },
      {
      "savol": "2. Qayerda yashaysan?",
      "javoblar": [
        {"javob": "25", "togri": true},
        {"javob": "34", "togri": false},
        {"javob": "23", "togri": false},
        {"javob": "12", "togri": false}
      ]
      },
      {
      "savol": "3. Sarvarning jinsi?",
      "javoblar": [
        {"javob": "Erkak", "togri": true},
        {"javob": "Ayol", "togri": false},
        {"javob": "Narmoda", "togri": false},
        {"javob": "Aniqmas", "togri": false}
      ]
      },
      {
      "savol": "4. Bolalaring soni?",
      "javoblar": [
        {"javob": "1", "togri": true},
        {"javob": "2", "togri": false},
        {"javob": "3", "togri": false},
        {"javob": "4", "togri": false}
      ]
      }
  ];



  int son = 0;
  int natija = 0;

  void javob(bool togri){
    setState(() {
      if(togri){
        natija = natija + 1;
      }
      son++;
    });
  }

  void qayta(){
    setState(() {
      son = 0;
      natija = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey,
        buttonTheme: ButtonThemeData(
          buttonColor: Color.fromARGB(255, 46, 11, 10),
      )),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.search)
          ],
          backgroundColor: Colors.black87,
          title: Text('Quiz App'),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: son < savoljavob.length ? Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Center(child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(savoljavob[son]["savol"], style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: ()=>{javob(savoljavob[son]["javoblar"][0]["togri"])}, child: Text(savoljavob[son]["javoblar"][0]["javob"])),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: ()=>{javob(savoljavob[son]["javoblar"][1]["togri"])}, child: Text(savoljavob[son]["javoblar"][1]["javob"])),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: ()=>{javob(savoljavob[son]["javoblar"][2]["togri"])}, child: Text(savoljavob[son]["javoblar"][2]["javob"])),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(onPressed: ()=>{javob(savoljavob[son]["javoblar"][3]["togri"])}, child: Text(savoljavob[son]["javoblar"][3]["javob"])),
            ),
          ]) 
          : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Natija: $natija / 4'),
              ElevatedButton.icon(onPressed: ()=>{qayta()}, icon: Icon(Icons.restart_alt), label: Text("Qayta boshlash"))
            ],
          )
        ),
      ),
      ),
    );
  }
}