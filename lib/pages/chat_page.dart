import 'package:chat_app/constants/constant.dart';
import 'package:chat_app/widgets/chat_bottom_bar.dart';
import 'package:chat_app/widgets/chat_simple.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key, required this.profile});

  final profiles = AppDatabase.profiles;

  final MyProfilesData profile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(top: 10, left: 5),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                size: 25,
              ),
            ),
          ),
          leadingWidth: 20,
          title: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    profile.myProfile,
                    width: 45,
                    height: 45,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profile.name,
                        style: const TextStyle(fontSize: 19),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "online",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 10, right: 25),
              child: Icon(
                CupertinoIcons.video_camera_solid,
                size: 35,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 20),
              child: Icon(
                Icons.call,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10),
              child: Icon(
                Icons.more_vert,
                size: 35,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 60),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: 300,
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: const Color(0xFFFFF3C2),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 8,
                              )
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Icon(Icons.lock),
                                    ),
                                    TextSpan(
                                      text:
                                          "Messages and calls are end-to-end encrypted. No one outside of this chat, not even WhatsApp, can read or listen to them. Tap to learn more.",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: const [
                    ChatSimple(),
                    ChatSimple(),
                    ChatSimple(),
                    ChatSimple(),
                    ChatSimple(),
                    ChatSimple(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: const ChatBottomBar(), // send messages
    );
  }
}
