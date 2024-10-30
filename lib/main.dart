
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("SMPN 01 Ketapang"),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.blue[50],
        drawer: new Drawer(
          child : ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: new Text(
                  "Wayan Carfanda",
                  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                accountEmail: Text("wayancaffanda10@@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.grey[60],
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile Siswa-Siswi"),
              ),
              ListTile(
                leading: Icon(Icons.vpn_key),
                title: Text("Ubah Password"),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("Tentang"),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Keluar"),
              ),
            ],
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                image: const DecorationImage(
                  image: AssetImage('assets/image.png'),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.home),
                  iconSize: 40,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.info),
                  iconSize: 40,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.image),
                  iconSize: 40,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.person),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Container(
                color: Colors.grey[200],
                child: const Center(
                  child: Text(
                    'Informasi/Berita',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({required this.title, required this.icon, required this.color});

  final String title;
  final IconData icon;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: (() {}),
        splashColor: Colors.green,
        child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: 70.0,
                  color: color,
                ),
                Text(
                  title,
                  style: new TextStyle(fontSize: 17.0),
                )
              ],
            )),
      ),
    );
  }
}