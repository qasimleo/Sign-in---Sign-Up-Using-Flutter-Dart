import 'package:flutter/material.dart';

void main() {
  runApp(const assignment()); // Class My App
}

class assignment extends StatelessWidget {
  const assignment({Key? key}) : super(key: key);

  void sampleFunction_1() {
    print("Calling Function : ");
    for (int i = 0; i < 4; i++) {
      print("i = $i");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Debug mode off
      debugShowCheckedModeBanner: false,
      title: 'Assignment 01', // Title
      // Home
      home: Scaffold(
        // Scaffold
        backgroundColor: Colors.blueGrey.shade100, // Background Color
        appBar: AppBar(
          title: const Center(
            child: Text('Widgets'),
          ),
          backgroundColor: Colors.blueGrey.shade700, // App Bar Background Color
          shadowColor: Colors.black, // App Bar Shadow color
        ),
        // Body

        body: Center(
            // Column
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const LightBlueBox(), // Calling Function from Second_Main.dart

            // Function Call
            Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: RaisedButton(
                  onPressed: () => sampleFunction_1(),
                  child: const Text(' Function Without Argument '),
                  textColor: Colors.white,
                  color: Colors.green,
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                )),

            Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: RaisedButton(
                  onPressed: () => sampleFunction_1(),
                  child: const Text(' Function Without Argument '),
                  textColor: Colors.white,
                  color: Colors.green,
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                )),
            // Column
            Container(
              // Container
              margin: const EdgeInsets.fromLTRB(3, 2, 3, 2), // Margin
              child: const Text(
                'Column ',
                style:
                    TextStyle(color: Colors.black, fontSize: 17), // Text Style
                textAlign: TextAlign.center,
              ),
              padding: const EdgeInsets.fromLTRB(3, 2, 3, 2), // Padding
            ),

            Container(
              // Container
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0), // Margin
              child: const Text(
                'Qasim',
                style: TextStyle(color: Colors.blue, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0), // Padding
            ),
            Container(
              // Container
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0), // Margin
              child: const Text(
                'Ehmad',
                style: TextStyle(color: Colors.blue, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0), // Padding
            ),
            Container(
              // Container
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0), // Margin
              child: const Text(
                'Alina',
                style: TextStyle(color: Colors.blue, fontSize: 15), // Style
                textAlign: TextAlign.center,
              ),
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0), // Padding
            ),
            const Divider(
              height: 10.0,
            ),

            // Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // if you need this
                side: BorderSide(color: Colors.grey.withOpacity(1), width: 2),
              ),
              color: Colors.white54, // App Bar Background Color
              clipBehavior: Clip.antiAlias,
              // Row
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text('Card title'),
                    subtitle: Text(
                      'Description',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        textColor: const Color(0xFF6200EE), // Text Color
                        onPressed: () {
                          Navigator.pushNamed(context, 'fibonocci');
                        },
                        child: const Text('Fibonocci Seq'),
                      ),
                      FlatButton(
                        textColor: const Color(0xFF6200EE), // Text Color
                        onPressed: () {
                          Navigator.pushNamed(context, 'factorial');
                        },
                        child: const Text('Factorial'),
                      ),
                      FlatButton(
                        textColor: const Color(0xFF6200EE), // Text Color
                        onPressed: () {},
                        child: const Text('Action 3'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Image
            Image.network(
              "https://i.pinimg.com/564x/0b/a3/d6/0ba3d60362c7e6d256cfc1f37156bad9.jpg",
              width: 370,
              // height: 70,
              // alignment: Alignment.bottomLeft,
              // fit: BoxFit.fitWidth,
              // colorBlendMode: BlendMode.darken,
            ),

            // Alert Dialog

            // Container(
            //   decoration: const BoxDecoration(
            //     image: DecorationImage(
            //       image: NetworkImage(
            //           "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // )

            // Image
            // Image.network(
            //     'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'), image: TextStyle(color: Colors.blue, fontSize: 15),

            // Table
            // Container(
            //   // Container
            //   padding: const EdgeInsets.all(15),
            //   // Table
            //   child: Table(
            //     border: TableBorder.all(
            //         width: 1, color: Colors.black45), // Table border
            //     children: const [
            //       TableRow(children: [
            //         TableCell(child: Text("S/N")),
            //         TableCell(child: Text("Name")),
            //         TableCell(child: Text("Address")),
            //         TableCell(child: Text("Nation"))
            //       ]),
            //       TableRow(children: [
            //         TableCell(child: Text("1.")),
            //         TableCell(child: Text("Krishna Karki")),
            //         TableCell(child: Text("Nepal, Kathmandu")),
            //         TableCell(child: Text("Nepal"))
            //       ]),
            //       TableRow(children: [
            //         TableCell(child: Text("2.")),
            //         TableCell(child: Text("John Wick")),
            //         TableCell(child: Text("New York, USA")),
            //         TableCell(child: Text("USA"))
            //       ]),
            //       TableRow(children: [
            //         TableCell(child: Text("3.")),
            //         TableCell(child: Text("Fedrick May")),
            //         TableCell(child: Text("Berlin, Germany")),
            //         TableCell(
            //           child: Text("Germany"),
            //         ),
            //       ]),
            //     ],
            //   ),
            // )
          ],
        )),

        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home), // Icon Home
              label: "Home", // Label Home
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business), // Icon Business
              label: "Business", // Text Business
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), // Icon School
              label: "Mail", // Label School
            ),
          ],
        ),

        // Drawer
        drawer: Drawer(
          elevation: 10.0,
          backgroundColor: Colors.blueGrey.shade100, // App Bar Background Color
          child: Column(
            // Column
            children: const <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff4c505b),
                ),
                accountName: Text("Qasim Ali"),
                accountEmail: Text(
                  "qasimleo8@gmail.com",
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    size: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
              //List Tile
              ListTile(
                leading: Icon(Icons.message), // Icon
                title: Text('Messages'),
              ),
              // Divider
              Divider(
                height: 0.1,
              ),
              //List Tile
              ListTile(
                title: Text("Inbox"),
                leading: Icon(Icons.mail),
              ),

              //List Tile
              ListTile(
                title: Text("Primary"),
                leading: Icon(Icons.inbox),
              ),
              //List Tile
              ListTile(
                title: Text("Social"),
                leading: Icon(Icons.people),
              ),
              //List Tile
              ListTile(
                title: Text("Promotions"),
                leading: Icon(Icons.local_offer),
              ),
              ListTile(
                title: Text("Contact"),
                leading: Icon(Icons.contact_mail),
              ),
            ],
          ),
        ),
        // Floating Action

        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Tabbar'), // Label

          backgroundColor: Color(0xff4c505b),
          icon: const Icon(Icons.arrow_forward), // Icon
          onPressed: () {
            Navigator.pushNamed(context, 'Tabbar');
          },
        ),
      ),
    );
  }
}

// // 2nd Screen
// class SecondRoute extends StatelessWidget {
//   const SecondRoute({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Second Screen"),
//       ),
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }

