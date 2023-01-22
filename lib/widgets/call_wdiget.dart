import 'package:chat_app/constants/constant.dart';
import 'package:flutter/material.dart';

class CallWidget extends StatelessWidget {
  CallWidget({super.key});

  final otherCall = AppDatabase.callData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ListView.builder(
              itemCount: otherCall.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Calls(calls: otherCall[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Calls extends StatelessWidget {
  const Calls({
    Key? key,
    required this.calls,
  }) : super(key: key);

  final CallsData calls;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              calls.callImage,
              width: 60,
              height: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Text(
                  calls.callName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      calls.callAnswer.icon,
                      size: 19,
                      color: calls.color,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      calls.dateTimeCall,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Icon(
            calls.iconCall.icon,
            color: const Color(0xFF075E55),
          ),
        ],
      ),
    );
  }
}
