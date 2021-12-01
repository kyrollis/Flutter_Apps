import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage(
                  'https://www.pngkey.com/png/full/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Chats",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        titleSpacing: 20.0,
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Text("Search"),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return buildStoryItem();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  itemCount: 10,
                ),
              ),
              SizedBox(height: 20.0),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return buildChatsItem();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20.0);
                  },
                  itemCount: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem() => Container(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    'https://www.pngkey.com/png/full/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    end: 2.0,
                    bottom: 2.0,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 7,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 3.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 6,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "keroSaber kero Saber kero kero",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      );
  Widget buildChatsItem() => Container(
        child: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    'https://www.pngkey.com/png/full/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    end: 2.0,
                    bottom: 2.0,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 7,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 3.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 6,
                  ),
                ),
              ],
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'kyrollis saber fouad',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'kyrollis saber fouadkyrollis saber fouadkyrollis saber fouadkyrollis saber fouad',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      Container(),
                      Text(
                        '12.00 p.m',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
