import 'package:flutter/material.dart';
import 'package:fluttertabbarsample/view/call_screen/callscreen.dart';
import 'package:fluttertabbarsample/view/chats_screen/chatscreen.dart';
import 'package:fluttertabbarsample/view/settings_screen/settingsscreen.dart';
import 'package:fluttertabbarsample/view/status_screen/statusscreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075E54),
          title: Text(
            "Whatsapp",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Settingsscreen1(),
                    ));
              },
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            tabs: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Icon(
                  Icons.photo_camera,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "CHATS",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "STATUS",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "CALLS",
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("Camera"),
            ),
            Chatscreen(),
            Statusscreen(),
            Callscreen()
          ],
          //physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
