import 'package:flutter/material.dart';
import '../constants/constant.dart';

class StatusWidget extends StatelessWidget {
  StatusWidget({super.key});

  final yourStatuses = AppDatabase.otherStatus;
  final yourOldStatus = AppDatabase.oldStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(1.5),
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/images/status1.jpg",
                          width: 55,
                          height: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "My Status",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Today, 12.30 am",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.more_horiz,
                      color: Color(0xFF075E55),
                    ),
                  ],
                ),
              ),
            ),

            // other status 1
            const SliverPadding(
              padding: EdgeInsets.only(top: 10),
            ),
            SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recent Updates",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  ListView.builder(
                    itemCount: yourStatuses.length - 1,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return OtherStatus(
                        statuses: yourStatuses[index],
                      );
                    },
                  ),
                ],
              ),
            ),

            // other status 2
            SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Viewd Updates",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  ListView.builder(
                    itemCount: yourOldStatus.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return OldStatus(
                        oldStatusData: yourOldStatus[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OtherStatus extends StatelessWidget {
  const OtherStatus({
    Key? key,
    required this.statuses,
  }) : super(key: key);

  final OtherStatusData statuses;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(1.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                width: 3,
                color: Colors.blue,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                statuses.yourStatus,
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  statuses.yourName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  statuses.dateTime,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OldStatus extends StatelessWidget {
  const OldStatus({
    super.key,
    required this.oldStatusData,
  });

  final OldStatusData oldStatusData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(1.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                width: 3,
                color: Colors.grey,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                oldStatusData.yourStatus,
                width: 55,
                height: 55,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  oldStatusData.yourName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  oldStatusData.dateTime,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
