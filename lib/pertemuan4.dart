import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

//listTile
// class _MainAppState extends State<MainApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           // appBar: AppBar(
//           //   title: Text('Ini Contoh ListTile'),
//           //   backgroundColor: Colors.greenAccent,
//           // ),
//           // backgroundColor: Colors.grey,
//           // body: SingleChildScrollView(
//           //   child: Column(
//           //     children: <Widget>[
//           //       Padding(padding: EdgeInsets.only(top: 10)),
//           //       Card(
//           //         child: ListTile(
//           //           title: Text('ListTile Satu Baris'),
//           //         ),
//           //       ),
//           //       Card(
//           //         child: ListTile(
//           //           title: Text('ListTile Dua Baris'),
//           //           subtitle: Text('Yang diatas Title, yang ini subtitle'),
//           //         ),
//           //       ),
//           //       Card(
//           //         child: ListTile(
//           //           title: Text('List Title 3 Baris yang mencakup Icon'),
//           //           subtitle: Text(
//           //               'Berkat panjangnya subtitle pada ListTile secarata tidak langsung dapat disebut lebih dari 3 line'),
//           //           isThreeLine: true,
//           //         ),
//           //       ),
//           //       Card(
//           //         child: ListTile(
//           //           leading: Icon(Icons.home),
//           //           title: Text('List Tile dengan Icon disamping'),
//           //           subtitle: Text('Sebelah kiri ini logo home'),
//           //         ),
//           //       ),
//           //       Card(
//           //         child: ListTile(
//           //           leading: Icon(Icons.navigation),
//           //           title: Text('List tile dengan Icon dan Menu'),
//           //           subtitle: Text(
//           //               'Sebelah kiri ini logo Icon dan sebelah kanan menu burger'),
//           //           trailing: Icon(Icons.more_vert),
//           //           isThreeLine: true,
//           //         ),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//         ));
//   }
// }

//card
class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "contoh card",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.blue[100],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.blueAccent,
                    elevation: 5,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15),
                        ),
                        Image.asset(
                          "img/fotoa.jpg",
                          scale: 10,
                        ),
                        ListTile(
                          title: Text(
                            "kaos kaki perempuan",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          subtitle: Text(
                            "beragam warna menarik",
                            style: TextStyle(
                                color: Colors.green[800],
                                fontSize: 20,
                                backgroundColor: Colors.pink[50]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.blueAccent,
                    elevation: 5,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15),
                        ),
                        Image.asset(
                          "img/fotoa.jpg",
                          scale: 10,
                        ),
                        ListTile(
                          title: Text(
                            "kaos kaki perempuan",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          subtitle: Text(
                            "beragam warna menarik",
                            style: TextStyle(
                                color: Colors.green[800],
                                fontSize: 20,
                                backgroundColor: Colors.pink[50]),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

//stack
// class _MainAppState extends State<MainApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: Stack(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(
//                   left: 20.0
//                 ),
//                 child: Image.asset("img/fotoa.jpg", height: 250, width: 250,),
//               ),
//               Container(
//                 margin: EdgeInsets.only(
//                     top: 100,
//                   left: 150,
//                 ),
//                 child: Image.asset("img/fotob.jpg", height: 250, width: 250,),
//               ),
//               Container(
//                 alignment: Alignment.topCenter,
//                   margin: EdgeInsets.only(
//                     top: 140,
//                   ),
//                   child: Text("ke toilet saja bu jen",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,
//                   color: Colors.black),),
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }

//listview
// class _MainAppState extends State<MainApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text(
//               "CONTOH LISTVIEW",
//               style:
//                   TextStyle(backgroundColor: Colors.blue, color: Colors.white),
//             ),
//           ),
//           backgroundColor: Colors.black,
//           body: Center(
//             child: ListView(
//               padding: EdgeInsets.all(10.0),
//               children: [
//                 ListTile(
//                   title: Text(
//                     "Contoh 1",
//                     style: TextStyle(fontSize: 20, color: Colors.white,
//                         backgroundColor: Colors.red[200]),
//                   ),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Contoh 2",
//                     style: TextStyle(fontSize: 20, color: Colors.lightBlue),
//                   ),
//                 ),
//                 ListTile(
//                   title: Text(
//                     "Contoh 3",
//                     style: TextStyle(fontSize: 20, color: Colors.lightGreen),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

// //gridview
// class _MainAppState extends State<MainApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: Center(
//             child: GridView.extent(
//               maxCrossAxisExtent: 200,
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 10,
//               primary: false,
//               padding: EdgeInsets.all(16),
//               children: [
//                 Container(
//                   color: Colors.blueAccent,
//                   child: Image.asset("img/fotoa.jpg"),
//                 ),
//                 Container(
//                   color: Colors.yellowAccent,
//                   child: Image.asset("img/fotob.jpg"),
//                 ),
//                 Container(
//                   color: Colors.green,
//                   child: Image.asset("img/fotoc.jpg"),
//                 ),
//                 Container(
//                   color: Colors.redAccent,
//                   child: Image.asset("img/fotod.jpg"),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
// class _MainAppState extends State<MainApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 width: 200, // Tambahkan ukuran agar container terlihat
//                 height: 200, // Tambahkan ukuran agar container terlihat
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     width: 16,
//                     color: Colors.black,
//                   ),
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                 ),
//                 child: Image.asset("img/fotoa.jpg"),
//                 margin: EdgeInsets.all(10),
//               ),
//               Container(// enaknya pakai container bisa tambahin terus gambar bisa diganti dan tinggal ganti isinya
//                 width: 200, // Tambahkan ukuran agar container terlihat
//                 height: 200, // Tambahkan ukuran agar container terlihat
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     width: 16,
//                     color: Colors.blueAccent,
//                   ),
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                 ),
//                 child: Image.asset("img/fotob.jpg"),
//                 margin: EdgeInsets.all(10),
//               ),
//               Container(
//                 width: 200, // Tambahkan ukuran agar container terlihat
//                 height: 200, // Tambahkan ukuran agar container terlihat
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     width: 16,
//                     color: Colors.lightGreen,
//                   ),
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                 ),
//                 child: Image.asset("img/fotoc.jpg"),
//                 margin: EdgeInsets.all(10),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
