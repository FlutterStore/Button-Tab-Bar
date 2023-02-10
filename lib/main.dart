import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text("Button Tab Bar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 6,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8),
                child: ButtonsTabBar(
                  physics: const BouncingScrollPhysics(),
                  contentPadding: const EdgeInsets.all(10,),
                  backgroundColor: Colors.green,
                  unselectedBackgroundColor: Colors.grey[300],
                  unselectedLabelStyle: const TextStyle(color: Colors.black),
                  labelStyle:
                      const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  tabs: const [
                    Tab(
                      icon: Icon(Icons.home,size: 18,),
                      text: "Home",
                    ),
                    Tab(
                      icon: Icon(Icons.person,size: 18,),
                      text: "Profile",
                    ),
                    Tab(
                      icon: Icon(Icons.settings,size: 18,),
                      text: "Setting",
                    ),
                    Tab(
                      icon: Icon(Icons.notifications,size: 18,),
                      text: "Notification",
                    ),
                    Tab(
                      icon: Icon(Icons.calendar_today,size: 18,),
                      text: "Calender",
                    ),
                    Tab(
                      icon: Icon(Icons.transfer_within_a_station_sharp,size: 18,),
                      text: "Tranction",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  children: <Widget>[
                    Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: 50,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Container(
                                  width: 60,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: const [ BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5.0,
                                    ),]
                                  ),
                                  child: const Center(child: Icon(Icons.home)),
                                ),
                                title: const Text("Successoft Infotech",style: TextStyle(fontSize: 16,height: 1.5,overflow: TextOverflow.ellipsis),),
                                subtitle: const Text("Flutter Store",style: TextStyle(color: Colors.grey, fontSize: 10,height: 2)),
                                trailing: const Icon(Icons.arrow_forward_ios,size: 12,color: Colors.black),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                    // Center(
                    //   child: SingleChildScrollView(
                    //     child: Column(
                    //       children: List.generate(
                    //         50, 
                    //         (index) {
                    //           return ListTile(
                    //             leading: Container(
                    //               width: 60,
                    //               padding: const EdgeInsets.all(10),
                    //               decoration: BoxDecoration(
                    //                 borderRadius: BorderRadius.circular(10),
                    //                 color: Colors.white,
                    //                 boxShadow: const [ BoxShadow(
                    //                   color: Colors.grey,
                    //                   blurRadius: 5.0,
                    //                 ),]
                    //               ),
                    //               child: const Center(child: Icon(Icons.home)),
                    //             ),
                    //             title: const Text("Enable Smart Savings",style: TextStyle(fontSize: 16,height: 1.5,overflow: TextOverflow.ellipsis),),
                    //             subtitle: const Text("Put your saving on autopilot",style: TextStyle(color: Colors.grey, fontSize: 10,height: 2)),
                    //             trailing: const Icon(Icons.arrow_forward_ios,size: 12,color: Colors.black),
                    //           );
                    //         }
                    //       ),
                    //     ),
                    //   )
                    // ),
                    const Center(
                      child: Text("Profile"),
                    ),
                    const Center(
                      child: Text("Setting"),
                    ),
                    const Center(
                      child: Text("Notification"),
                    ),
                    const Center(
                      child: Text("Calender"),
                    ),
                    const Center(
                      child: Text("Tranction"),
                    ),
                  ],
                ),
              ),
              // Container(
              //   height: 200,
              //   width: 200,
              //   color: Colors.red,
              // )
            ],
          ),
        ),
      ),
    );
  }
}