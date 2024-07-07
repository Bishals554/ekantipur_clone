import 'package:ekantipur_app_clone/screen/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  bool isDrawerOpen = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  if (scaffoldKey.currentState!.isDrawerOpen) {
                    scaffoldKey.currentState!.openEndDrawer();
                    setState(() {
                      isDrawerOpen = false;
                    });
                  } else {
                    scaffoldKey.currentState!.openDrawer();
                    setState(() {
                      isDrawerOpen = true;
                    });
                  }
                },
              );
            },
          ),
          flexibleSpace: SafeArea(
            child: SizedBox(
                child: Image.asset(
              'assets/images/logo.png',
              height: 50,
              width: 200,
            )),
          ),
        ),
        body: Scaffold(
            backgroundColor: Colors.white,
            key: scaffoldKey,
            drawer: Drawer(
              backgroundColor: Colors.white,
              shape:
                  const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
              width: MediaQuery.of(context).size.width,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  // SizedBox(
                  //   height: 2,
                  // ),
                  Container(
                    height: 2,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 3,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    color: Colors.white,
                  ),
                  Container(
                    color: Colors.lightBlue.shade100.withOpacity(0.2),
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Create an account',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.lightBlue[700])),
                              const SizedBox(height: 5),
                              const Text('To access all premium features',
                                  style: TextStyle(fontSize: 10)),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(80, 30),
                              elevation: 0,
                              backgroundColor:
                                  Colors.lightBlue.shade100.withOpacity(0.2),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.lightBlue[700]!),
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            child: Text('Sign Up',
                                style: TextStyle(color: Colors.lightBlue[700])),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Categories',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue[700])),
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  CustomListTile(
                    title: 'समाचार',
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  CustomListTile(
                    title: 'अर्थ / वाणिज्य',
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  CustomListTile(
                    title: 'विचार',
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  CustomListTile(
                    title: 'खेलकुद',
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  CustomListTile(
                    title: 'मनोरन्जन',
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  CustomListTile(
                    title: 'फोटोफिचर',
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  ListTile(
                    title: const Text('फिचर'),
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  ListTile(
                    title: const Text('विश्व'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('ब्लग'),
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  ListTile(
                    title: const Text('कोसेली'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('प्रवास'),
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  ListTile(
                    title: const Text('शिक्षा'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('स्वास्थ्य'),
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  ListTile(
                    title: const Text('कुराकनी'),
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  ListTile(
                    title: const Text('साहित्य / विविध'),
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  ListTile(
                    title: const Text('भिडियो'),
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  ListTile(
                    title: const Text('विविधा'),
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  ListTile(
                    title: const Text('बजार'),
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  ListTile(
                    title: const Text('E-Paper'),
                    onTap: () {},
                  ),
                  const Divider(
                    thickness: 0.1,
                  ),
                  ListTile(
                    title: const Text('Today\'s News'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            body: const Center(
              child: Text('Home Page'),
            )));
  }
}
