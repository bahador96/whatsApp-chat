import 'package:chat_app/gen/assets.gen.dart';

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Settings",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child:
                          Assets.images.profile4.image(width: 65, height: 65),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Benyamin",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Hey there, I am a Programmer",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Divider(
                color: Colors.yellow,
              ),
            ),
            const SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.key),
                    ),
                    title: Text(
                      "Account",
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      "Security, notifications, change number",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.person_pin),
                    ),
                    title: Text(
                      "Avatar",
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      "Create, edit, profile photo",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.lock),
                    ),
                    title: Text(
                      "Privacy",
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      "Block contacts, disappearing messages",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.message),
                    ),
                    title: Text(
                      "Chats",
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      "Theme, wallpapers, chat history",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.notifications),
                    ),
                    title: Text(
                      "Notificartions",
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      "Message, group & call tones",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.circle_outlined),
                    ),
                    title: Text(
                      "Storage and data",
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      "Network usage, auto-download",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.language),
                    ),
                    title: Text(
                      "App language",
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      "English (phone's language)",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(Icons.help_outline_outlined),
                    ),
                    title: Text(
                      "Help",
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      "Help center, contact us, privacy policy",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Icon(Icons.people_alt),
                    ),
                    title: Text(
                      "Invite a friend",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: Column(
                  children: const [
                    Text(
                      "from",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Meta",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
