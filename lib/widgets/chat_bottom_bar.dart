import 'package:flutter/material.dart';

class ChatBottomBar extends StatelessWidget {
  const ChatBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black38,
                  size: 35,
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 200,
                  child: TextFormField(
                    style: const TextStyle(
                      fontSize: 19,
                    ),
                    decoration: const InputDecoration(
                        hintText: "Messages", border: InputBorder.none),
                  ),
                ),
                const Icon(
                  Icons.attachment_outlined,
                  color: Colors.black38,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.camera_alt,
                  color: Colors.black38,
                  size: 20,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: const Color(0xFF00887A),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Icon(
              Icons.mic,
              size: 35,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
