import 'package:evently/tabs/home/event_item.dart';
import 'package:evently/tabs/home/home_tab_header.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTabHeader(),
        Expanded(
          child: ListView.separated(
              itemBuilder: (_, index) => EventItem(),
              separatorBuilder: (_, __) => SizedBox(height: 16),
              itemCount: 10),
        )
      ],
    );
  }
}
