import 'package:flutter/material.dart';

class LeftSideDrawer extends StatelessWidget {
  const LeftSideDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0XFF2E3132),
      child: ListView(
        children: [
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
        ],
      ),
    );
  }
}
