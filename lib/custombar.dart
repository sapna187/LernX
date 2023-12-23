import 'package:flutter/material.dart';
import 'package:flutter_task/home.dart';
import 'package:flutter_task/poll.dart';
import 'package:flutter_task/utils.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBar extends StatelessWidget {
  final RxInt currentIndex = 0.obs;

  List<IconData> icons = [
    Icons.home,
    Icons.search,
    Icons.person_add,
    Icons.person,
  ];

  List<String> labels = [
    'Home',
    'Find',
    'Invites',
    'Profile',
  ];

  CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: Obx(
        () => Container(
          height: 60,
          decoration: const BoxDecoration(
            color: white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(icons.length + 1, (index) {
              if (index == 2) {
                return GestureDetector(
                  onTap: () {
                    _showBottomSheet(context);
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: green,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: white,
                      ),
                    ),
                  ),
                );
              } else {
                int adjustedIndex = index > 2 ? index - 1 : index;
                return GestureDetector(
                  onTap: () {
                    currentIndex.value = adjustedIndex;
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icons[adjustedIndex],
                        color:
                            currentIndex.value == adjustedIndex ? green : black,
                      ),
                      Text(
                        labels[adjustedIndex],
                        style: TextStyle(
                          color: currentIndex.value == adjustedIndex
                              ? green
                              : black,
                        ),
                      ),
                    ],
                  ),
                );
              }
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    switch (currentIndex.value) {
      case 0:
        return const HomePage();
      case 1:
        return Container(color: Colors.blue);
      case 2:
        return Container(color: green);
      case 3:
        return Container(color: Colors.orange);
      default:
        return Container();
    }
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                  onTap: () {
                    Get.to(() => const AddPoll());
                  },
                  child: _buildBottomSheetItem('Start Post')),
              InkWell(
                  onTap: () {
                    Get.to(() => const AddPoll());
                  },
                  child: _buildBottomSheetItem('Create Poll')),
              _buildBottomSheetItem('Share Project'),
              _buildBottomSheetItem('Open Discussion'),
              _buildBottomSheetItem(''),
              _buildBottomSheetItem(''),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBottomSheetItem(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          const SizedBox(width: 16.0),
          CustomText(text, lightBlack, 18, "MyFont", FontWeight.bold),
        ],
      ),
    );
  }
}
