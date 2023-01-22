import 'package:flutter/material.dart';

class MyProfilesData {
  final String myProfile, name, chat;
  final int countMessages;
  final String hour;

  MyProfilesData({
    required this.myProfile,
    required this.name,
    required this.chat,
    required this.countMessages,
    required this.hour,
  });
}

class OtherStatusData {
  final String yourStatus, yourName, dateTime;

  OtherStatusData(
      {required this.yourStatus,
      required this.yourName,
      required this.dateTime});
}

class OldStatusData {
  final String yourStatus, yourName, dateTime;

  OldStatusData(
      {required this.yourStatus,
      required this.yourName,
      required this.dateTime});
}

class CallsData {
  final String callImage, callName, dateTimeCall;
  Icon iconCall;
  Icon callAnswer;
  Color color;

  CallsData({
    required this.callImage,
    required this.callName,
    required this.dateTimeCall,
    required this.iconCall,
    required this.callAnswer,
    required this.color,
  });
}

class AppDatabase {
  // chat page
  static List<MyProfilesData> get profiles {
    return [
      MyProfilesData(
        myProfile: 'assets/images/profile1.jpg',
        name: "Amin",
        chat: "Hi, How are you",
        countMessages: 2,
        hour: "12.30",
      ),
      MyProfilesData(
        myProfile: 'assets/images/profile2.jpg',
        name: "Ali",
        chat: "Hi, How are you",
        countMessages: 2,
        hour: "12.30",
      ),
      MyProfilesData(
        myProfile: 'assets/images/profile3.jpg',
        name: "Mehran",
        chat: "Hi, How are you",
        countMessages: 2,
        hour: "18.30",
      ),
      MyProfilesData(
        myProfile: 'assets/images/profile4.jpg',
        name: "Ben",
        chat: "Hi, How are you today",
        countMessages: 5,
        hour: "13.30",
      ),
      MyProfilesData(
        myProfile: 'assets/images/profile5.jpg',
        name: "shayan",
        chat: "Hi, How are you today",
        countMessages: 5,
        hour: "13.30",
      ),
      MyProfilesData(
        myProfile: 'assets/images/profile6.jpg',
        name: "poya",
        chat: "Hi, How are you today",
        countMessages: 5,
        hour: "13.30",
      ),
      MyProfilesData(
        myProfile: 'assets/images/profile7.jpg',
        name: "Hasan",
        chat: "Hi, How are you today",
        countMessages: 15,
        hour: "13.30",
      ),
      MyProfilesData(
        myProfile: 'assets/images/profile8.jpg',
        name: "Mohamad Reze",
        chat: "Hi, How are you today",
        countMessages: 5,
        hour: "13.30",
      ),
      MyProfilesData(
        myProfile: 'assets/images/profile9.jpg',
        name: "shayan",
        chat: "Hi, How are you today",
        countMessages: 6,
        hour: "9.30",
      ),
      MyProfilesData(
        myProfile: 'assets/images/profile10.jpg',
        name: "shayan",
        chat: "Hi, How are you today",
        countMessages: 6,
        hour: "9.30",
      ),
    ];
  }

  // statues page
  static List<OtherStatusData> get otherStatus {
    return [
      OtherStatusData(
        yourStatus: "assets/images/status2.jpg",
        yourName: "anna",
        dateTime: "Today, 5.30",
      ),
      OtherStatusData(
        yourStatus: "assets/images/status3.jpg",
        yourName: "Julia",
        dateTime: "Today, 2.30",
      ),
    ];
  }

  // old status
  static List<OldStatusData> get oldStatus {
    return [
      OldStatusData(
        yourStatus: 'assets/images/status4.jpg',
        yourName: "Emily",
        dateTime: "yesterday, 5.15",
      ),
      OldStatusData(
        yourStatus: 'assets/images/status5.jpg',
        yourName: "John",
        dateTime: "yesterday, 5.15",
      ),
      OldStatusData(
        yourStatus: 'assets/images/status6.jpg',
        yourName: "Eli",
        dateTime: "yesterday, 10.15",
      ),
    ];
  }

  // call
  static List<CallsData> get callData {
    return [
      CallsData(
        callImage: "assets/images/profile1.jpg",
        callName: "Amin",
        dateTimeCall: "1 Today, 12.30",
        iconCall: const Icon(Icons.videocam),
        callAnswer: const Icon(Icons.call_made),
        color: const Color(0xFF075E55),
      ),
      CallsData(
        callImage: "assets/images/profile2.jpg",
        callName: "Ali",
        dateTimeCall: "1 Today, 12.30",
        iconCall: const Icon(Icons.videocam),
        callAnswer: const Icon(Icons.call_made),
        color: const Color(0xFF075E55),
      ),
      CallsData(
        callImage: "assets/images/profile3.jpg",
        callName: "Mehran",
        dateTimeCall: "1 Today, 12.30",
        iconCall: const Icon(Icons.videocam),
        callAnswer: const Icon(Icons.call_made),
        color: const Color(0xFF075E55),
      ),
      CallsData(
        callImage: "assets/images/profile3.jpg",
        callName: "Mehran",
        dateTimeCall: "1 Today, 12.30",
        iconCall: const Icon(Icons.call_sharp),
        callAnswer: const Icon(Icons.call_received),
        color: Colors.red,
      ),
      CallsData(
        callImage: "assets/images/profile3.jpg",
        callName: "Mehran",
        dateTimeCall: "1 Today, 12.30",
        iconCall: const Icon(Icons.call_sharp),
        callAnswer: const Icon(Icons.call_received),
        color: Colors.red,
      ),
    ];
  }
}
