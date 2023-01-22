import 'package:chat_app/constants/constant.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  ChatWidget({super.key});

  final profiles = AppDatabase.profiles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: ListView.builder(
          itemCount: profiles.length,
          itemBuilder: (context, index) {
            final profile = profiles[index];
            return Profiles(profile: profile);
          },
        ),
      ),
    );
  }
}

class Profiles extends StatelessWidget {
  const Profiles({
    Key? key,
    required this.profile,
  }) : super(key: key);

  final MyProfilesData profile;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatPage(profile: profile),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                profile.myProfile,
                width: 65,
                height: 65,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profile.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    profile.chat,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  Text(
                    profile.hour,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF0FCE5E),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0FCE5E),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      profile.countMessages.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
