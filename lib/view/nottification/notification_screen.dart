import 'package:flutter/material.dart';
import 'package:foodpage/utilis/const/colr_const.dart';



class Notification_screen extends StatelessWidget {
  const Notification_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.white,
          title: Text(
            "Notifications",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          actions: [
           Icon(Icons.line_axis_outlined,
                color: Colors.black),
            SizedBox(width: 20),
          ],
          bottom: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 16),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            unselectedLabelColor: ColrConst.primaryColor,
            indicator: BoxDecoration(
              color: ColrConst.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            tabs: [
              Tab(child: Text("All")),
              Tab(child: Text("Unread")),
              Tab(child: Text("Read")),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle('Today'),
              SizedBox(height: 12),
              _buildNotificationItem(
                title: 'New recipe!',
                subtitle:
                    'Far far away, behind the word\nmountains, far from the countries.',
              ),
              SizedBox(height: 12),
              _buildNotificationItem(
                title: 'Don’t forget to try your saved recipe',
                subtitle:
                    'Far far away, behind the word\nmountains, far from the countries.',
              ),
              SizedBox(height: 12),
              _buildSectionTitle('Yesterday'),
              SizedBox(height: 12),
              _buildNotificationItem(
                title: 'Don’t forget to try your saved recipe',
                subtitle:
                    'Far far away, behind the word\nmountains, far from the countries.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildNotificationItem(
      {required String title, required String subtitle}) {
    return Container(
      width: double.infinity,
      height: 82,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: CircleAvatar(
              radius: 20,
              child: Icon(Icons.file_copy,
                color: Colors.green,
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.circle,
                size: 10, color: ColrConst.primaryColor,)
          ),
        ],
      ),
    );
  }
}