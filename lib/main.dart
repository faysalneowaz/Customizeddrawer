import 'package:bothsidedrawer/notificationmodel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<NotificationModel> notificationmodel = [
    NotificationModel(
        "Toast", "Tost from Admin", true, "Monday, November 28, 2022"),
    NotificationModel("Request", "New Request from Hillol", true,
        "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", true, "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", true, "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", true, "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", true, "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", true, "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", false, "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", true, "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", false, "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", true, "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", false, "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", true, "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", false, "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", true, "Monday, November 28, 2022"),
    NotificationModel(
        "Toast", "Tost from Admin", false, "Monday, November 28, 2022"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //we are using Scaffold for drawer and also for endDrawer

      drawer: Drawer(
        backgroundColor: const Color(0XFF2E3132),
        child: ListView(
          children: [
            // DrawerHeader(
            //   child: Text("Hello"),
            //   decoration: BoxDecoration(
            //     color: Colors.red,
            //   ),
            // ),
            ListTile(
              onTap: () {},
              title: const Text(
                "Dashboard",
                style: TextStyle(color: Color(0XFF8E8F90)),
              ),
              leading: const Icon(
                Icons.dashboard,
                color: Color(0XFFF4F4F4),
              ),
            ),
            //This code is for fist row element
            //As I have used ListTile you can use Row as well
            ListTile(
              onTap: () {},
              title: const Text(
                "Studens",
                style: TextStyle(color: Color(0XFF8E8F90)),
              ),
              leading: const Icon(
                Icons.group,
                color: Color(0XFFF4F4F4),
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                "Events",
                style: TextStyle(color: Color(0XFF8E8F90)),
              ),
              leading: const Icon(
                Icons.event,
                color: Color(0XFFF4F4F4),
              ),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                "Teachers",
                style: TextStyle(color: Color(0XFF8E8F90)),
              ),
              leading: const Icon(
                Icons.person,
                color: Color(0XFFF4F4F4),
              ),
            ),

            //Here we have used ExpansionTile to have some menu inside main menu

            ExpansionTile(
              trailing: const Icon(
                Icons.arrow_drop_down,
                color: Color(0XFFF4F4F4),
              ),
              title: const Text(
                "Classes",
                style: TextStyle(color: Color(0XFF8E8F90)),
              ),
              leading: const Icon(
                Icons.book_online,
                color: Color(0XFFF4F4F4),
              ),
              children: [
                ListTile(
                  onTap: () {},
                  title: const Text(
                    "Chemistry",
                    style: TextStyle(color: Color(0XFF8E8F90)),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  title: const Text(
                    "Physics",
                    style: TextStyle(color: Color(0XFF8E8F90)),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  title: const Text(
                    "Biology",
                    style: TextStyle(color: Color(0XFF8E8F90)),
                  ),
                ),
              ],
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                "TimeTable",
                style: TextStyle(color: Color(0XFF8E8F90)),
              ),
              leading: const Icon(
                Icons.calendar_month,
                color: Color(0XFFF4F4F4),
              ),
            ),

            ListTile(
              onTap: () {},
              title: const Text(
                "Chats",
                style: TextStyle(color: Color(0XFF8E8F90)),
              ),
              leading: const Icon(
                Icons.messenger_sharp,
                color: Color(0XFFF4F4F4),
              ),
            ),

            ListTile(
              onTap: () {},
              title: const Text(
                "Mesages",
                style: TextStyle(color: Color(0XFF8E8F90)),
              ),
              leading: const Icon(
                Icons.message_outlined,
                color: Color(0XFFF4F4F4),
              ),
            ),

            Row(
              children: [],
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView.builder(
            itemCount: notificationmodel.length,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height / 6,
                margin: const EdgeInsets.only(
                  top: 6.0,
                  bottom: 6.0,
                  left: 6.0,
                  right: 6.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        3.0,
                        2.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerticalDivider(
                        color: notificationmodel[index].priority
                            ? Colors.green
                            : Colors.red,
                        thickness: 5,
                      ),
                      Text(notificationmodel[index].notificationTitle),
                    ],
                  ),
                ),
              );
            }),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0XFF2E3132),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text("SideBar APP"),
        actions: [
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: Text("New side bar design"),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
