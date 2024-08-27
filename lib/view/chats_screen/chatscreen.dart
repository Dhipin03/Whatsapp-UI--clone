import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> datalist = [
      {
        "dp":
            "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?t=st=1724743886~exp=1724747486~hmac=51834fdfdde0bb3b1387f536e2440aaee757332f0bfa6025c6c1519b409b154d&w=2000",
        "title": "Aron",
        "subtitle": "hello",
        "day": "yesterday",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/handsome-young-man-smiling_23-2148393553.jpg?w=2000",
        "title": "Ben",
        "subtitle": "hi there!",
        "day": "2 days ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/smiling-young-man-posing-with-crossed-arms_171337-23828.jpg?w=2000",
        "title": "Charlie",
        "subtitle": "good morning",
        "day": "3 days ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/portrait-young-man-smiling_171337-803.jpg?w=2000",
        "title": "David",
        "subtitle": "what's up?",
        "day": "4 days ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/cheerful-man_171337-6093.jpg?w=2000",
        "title": "Ethan",
        "subtitle": "hey!",
        "day": "last week",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/happy-young-man-with-thumb-up_171337-2368.jpg?w=2000",
        "title": "Frank",
        "subtitle": "nice to meet you",
        "day": "yesterday",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/portrait-happy-young-man_171337-22050.jpg?w=2000",
        "title": "George",
        "subtitle": "good afternoon",
        "day": "2 days ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/portrait-young-handsome-man_171337-19555.jpg?w=2000",
        "title": "Harry",
        "subtitle": "hello there!",
        "day": "3 days ago",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/handsome-young-man-standing_171337-5158.jpg?w=2000",
        "title": "Isaac",
        "subtitle": "good evening",
        "day": "last week",
      },
      {
        "dp":
            "https://img.freepik.com/free-photo/young-man-smiling_171337-5401.jpg?w=2000",
        "title": "Jack",
        "subtitle": "how are you?",
        "day": "yesterday",
      },
    ];

    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage("${datalist[index]["dp"]}"),
                ),
                title: Text(
                  "${datalist[index]["title"]}",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "${datalist[index]["subtitle"]}",
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                trailing: Column(
                  children: [
                    Text("${datalist[index]["day"]}"),
                    SizedBox(
                      height: 2,
                    ),
                    CircleAvatar(
                      child: Text(
                        "${index + 1}",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      radius: 12,
                      backgroundColor: Colors.green,
                    )
                  ],
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(
                height: 20,
              ),
          itemCount: 10),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        backgroundColor: Color(0xff075E54),
        onPressed: () {},
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
    );
  }
}
