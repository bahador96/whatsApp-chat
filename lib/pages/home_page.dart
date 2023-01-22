import 'package:chat_app/pages/settings_page.dart';
import 'package:chat_app/widgets/call_wdiget.dart';
import 'package:chat_app/widgets/chat_widget.dart';
import 'package:chat_app/widgets/status_widget.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        // height appbar with PreferredSize
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'WhatsApp',
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(top: 12, right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                onSelected: (selected) {
                  if (selected == 5) {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SettingsPage();
                      },
                    ));
                  }
                },
                padding: const EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                elevation: 10,
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New group",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New broadcast",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Linked devices",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Starred messages",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 5,
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: const Color(0xFF075E55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  //tab 1
                  const SizedBox(
                    width: 24,
                    child: Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),

                  //tab 2
                  SizedBox(
                    width: 90,
                    child: Tab(
                      child: Row(
                        children: [
                          const Text("CHATS"),
                          const SizedBox(width: 8),
                          Container(
                            alignment: Alignment.center,
                            // padding: const EdgeInsets.all(2),
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: const Text(
                              "10",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF075E55),
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // tab 3
                  const SizedBox(
                    width: 85,
                    child: Tab(
                      child: Text("STATUS"),
                    ),
                  ),
                  //tab 4
                  const SizedBox(
                    width: 85,
                    child: Tab(
                      child: Text("CALLS"),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  //tab 1 camera
                  Container(
                    color: Colors.black,
                  ),

                  //tab 2 chat
                  ChatWidget(),

                  //tab 3  status
                  StatusWidget(),

                  //tab 4 call
                  CallWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
