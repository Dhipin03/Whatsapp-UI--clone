import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settingsscreen1 extends StatelessWidget {
  const Settingsscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Color(0xff075E54),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/handsome-young-man-with-arms-crossed-white-background_23-2148222620.jpg?ga=GA1.1.2121223895.1723044746&semt=ais_hybrid"),
              ),
              title: Text(
                "Programmer",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Hey there, I am using whatsapp."),
            ),
            Divider(
              thickness: 0.5,
            ),
            ListTile(
              leading: Icon(
                Icons.key,
                color: Colors.grey,
              ),
              title: Text(
                "Account",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Privacy,security. change number"),
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                color: Colors.grey,
              ),
              title: Text(
                "Chats",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Theme,wallpapers, chat history"),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              title: Text(
                "Notifications",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Message,group & call tones"),
            ),
            ListTile(
              leading: Icon(
                Icons.circle_outlined,
                color: Colors.grey,
              ),
              title: Text(
                "Storage and Data",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Network usage,auto-download"),
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline,
                color: Colors.grey,
              ),
              title: Text(
                "Help",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Help center, contact us,privacy policy"),
            ),
            ListTile(
              leading: Icon(
                Icons.group,
                color: Colors.grey,
              ),
              title: Text(
                "Invite a Friend",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "from",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Facebook",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
