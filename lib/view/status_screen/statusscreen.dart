import 'package:flutter/material.dart';

class Statusscreen extends StatelessWidget {
  const Statusscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, width: 3),
                ),
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-vector/two-happy-families-riding-bicycles-beach-enjoy-sunset-scenery-cartoon-people-characters-flat-vector-illustration-design_1150-56739.jpg?t=st=1724740784~exp=1724741384~hmac=71f3af11dbb92c621a6b5a22ffdb093169d699dd7ab2bf368108f498b252e796"),
                ),
              ),
              title: Text(
                "My Status",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text(
                "Today, 12:30 am",
                style: TextStyle(color: Colors.grey.shade800),
              ),
              trailing: Icon(Icons.more_vert),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 22),
              child: Text(
                "Recent Updates",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                    fontSize: 13),
              ),
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.purple.shade600, width: 3),
                ),
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/premium-vector/castle-silhouette-full-moon-halloween-background_23-2148626388.jpg?t=st=1724740784~exp=1724741384~hmac=9220b4c7b57bc654c80e9eeccec4fee8baa84c0e3ad34e64097cc1bd12193197"),
                ),
              ),
              title: Text(
                "Alex",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text(
                "Today, 1:30",
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 3),
                ),
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-vector/full-moon-night-sky-dark-forest-landscape_107791-9496.jpg?t=st=1724740784~exp=1724741384~hmac=d8850ed417817e5a4cb71c3c7b3f726a8882554c68c208638eae8079dd3463ff"),
                ),
              ),
              title: Text(
                "Alex",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text(
                "Today, 1:30",
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 22),
              child: Text(
                "Viewed Updates",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                    fontSize: 13),
              ),
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, width: 3),
                ),
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-vector/lion-silhouette-savanna-forest_1308-85123.jpg?size=626&ext=jpg&ga=GA1.1.2121223895.1723044746&semt=ais_hybrid"),
                ),
              ),
              title: Text(
                "Aron",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text(
                "Yesterday, 1:30",
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, width: 3),
                ),
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-vector/collection-four-engravings-with-lion-head_98292-69.jpg?size=626&ext=jpg&ga=GA1.1.2121223895.1723044746&semt=ais_hybrid"),
                ),
              ),
              title: Text(
                "Ben",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text(
                "Yesterday, 1:30",
                style: TextStyle(color: Colors.grey.shade800),
              ),
            ),
          ],
        ),
      ),
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
