import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black87,
        child: ListView(
          controller: ScrollController(),
          children: [
            Container(
              height: 190,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/images/cr7.jpg"),
                    ),
                    Text("Cristiano Ronaldo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text("Account Details",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.verified_user_outlined,
                color: Colors.white,
              ),
              title: Text("Username", style: TextStyle(color: Colors.white)),
              subtitle: Text("CristianoRonaldo7",
                  style: TextStyle(color: Colors.white)),
            ),

            ListTile(
              leading: Icon(
                Icons.email_outlined,
                color: Colors.white,
              ),
              title:
                  Text("Email Address", style: TextStyle(color: Colors.white)),
              subtitle: Text("cristiano_ronaldo7@gmail.com",
                  style: TextStyle(color: Colors.white)),
            ),

            ListTile(
              leading: Icon(
                Icons.phone_outlined,
                color: Colors.white,
              ),
              title:
                  Text("Phone Number", style: TextStyle(color: Colors.white)),
              subtitle: Text("+92 300 0000000",
                  style: TextStyle(color: Colors.white)),
            ),

            ListTile(
              leading: Icon(
                Icons.perm_identity_outlined,
                color: Colors.white,
              ),
              title: Text("Account ID", style: TextStyle(color: Colors.white)),
              subtitle:
                  Text("127826728282", style: TextStyle(color: Colors.white)),
            ),

            ListTile(
              leading: Icon(
                Icons.perm_contact_calendar_outlined,
                color: Colors.white,
              ),
              title:
                  Text("Date of Birth", style: TextStyle(color: Colors.white)),
              subtitle:
                  Text("20/2/1987", style: TextStyle(color: Colors.white)),
            ),

            ListTile(
              leading: Icon(
                Icons.male,
                color: Colors.white,
              ),
              title: Text("Gender", style: TextStyle(color: Colors.white)),
              subtitle: Text("Male", style: TextStyle(color: Colors.white)),
            ),
            // ),
          ],
        ),
      ),
    );
  }
}
