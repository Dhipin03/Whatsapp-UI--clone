import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Callscreen extends StatelessWidget {
  const Callscreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> datalist = [
      {
        "dp":
            "https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg?ga=GA1.1.2121223895.1723044746&semt=ais_hybrid",
        "title": "Alex",
        "subtitle": "55 minutes ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/handsome-young-man-with-glasses-smiling_171337-14501.jpg?w=2000",
        "title": "Brian",
        "subtitle": "1 hour ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/portrait-handsome-young-man-smiling_171337-17029.jpg?w=2000",
        "title": "Chris",
        "subtitle": "2 hours ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/handsome-confident-young-man-smiling-while-posing-outdoors_176420-15352.jpg?w=2000",
        "title": "David",
        "subtitle": "3 hours ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/portrait-happy-young-man-smiling_171337-16169.jpg?w=2000",
        "title": "Evan",
        "subtitle": "4 hours ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/portrait-handsome-man-smiling_171337-17036.jpg?w=2000",
        "title": "Frank",
        "subtitle": "5 hours ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/handsome-young-man-with-glasses-smiling_171337-14501.jpg?w=2000",
        "title": "George",
        "subtitle": "6 hours ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/happy-young-man-smiling_171337-21002.jpg?w=2000",
        "title": "Henry",
        "subtitle": "7 hours ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/portrait-smiling-man_171337-16113.jpg?w=2000",
        "title": "Isaac",
        "subtitle": "8 hours ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/portrait-handsome-young-man_171337-15645.jpg?w=2000",
        "title": "Jack",
        "subtitle": "9 hours ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/portrait-handsome-smiling-man_171337-15992.jpg?w=2000",
        "title": "Kevin",
        "subtitle": "10 hours ago",
      },
    ];

    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage("${datalist[index]["dp"]}"),
                ),
                title: Text(
                  "${datalist[index]["title"]}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      index.isEven
                          ? CupertinoIcons.arrow_down_left
                          : CupertinoIcons.arrow_up_right,
                      color: index.isEven ? Colors.red : Colors.green,
                    ),
                    Text("${datalist[index]["subtitle"]}"),
                  ],
                ),
                trailing: Icon(
                  index.isEven
                      ? CupertinoIcons.phone_fill
                      : CupertinoIcons.videocam_fill,
                  color: Color(0xff075E54),
                ),
              ),
          separatorBuilder: (context, index) => Divider(
                thickness: 1,
              ),
          itemCount: 10),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29)),
        onPressed: () {},
        backgroundColor: Color(0xff075E54),
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      ),
    );
  }
}
