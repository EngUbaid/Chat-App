import 'package:chatapp/common/chat_Listtile.dart';
import 'package:chatapp/common/common_circleavtar.dart';
import 'package:chatapp/common/common_row.dart';
import 'package:chatapp/common/comon_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UpdatesScreen extends StatefulWidget {
  const UpdatesScreen({super.key});

  @override
  State<UpdatesScreen> createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  List profileimages = [
    "images/pic1.jpg",
    "images/pic2.jpg",
    "images/pic3.jpg",
    "images/pic4.jpg",
    "images/pic5.jpg",
    "images/pic1.jpg",
    "images/pic2.jpg",
    "images/pic3.jpg",
    "images/pic4.jpg",
    "images/pic5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Updates",
          style: TextStyle(color: greencolor),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Commonrow(tittle: "Status", ontap: () {}, icon: Icons.more_vert),
            SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CommonCircleAvtar(
                        image: AssetImage(profileimages[index]),
                        tittle: index == 0 ? "My status" : " Names $index",
                        ontap: () {}),
                  );
                },
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Commonrow(tittle: "Channels", ontap: () {}, icon: Icons.add),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 5,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  String formattedTime =
                      DateFormat('hh:mm a').format(DateTime.now());
                  return ChatListtile(
                    title: " Chanel NAmes $index",
                    subtitle: "messeges $index",
                    time: Text(formattedTime),
                    image: Image.asset(profileimages[index]).image,
                    ontap: () {
                      // Navigator.push(context, MaterialPageRoute(
                      //   builder: (context) {
                      //     return ChatScreen(name: "title $index");
                      //   },
                      // ));
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
