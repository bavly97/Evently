import 'package:evently/models/category_model.dart';
import 'package:evently/tabs/home/tab_item.dart';
import 'package:flutter/material.dart';

class HomeTabHeader extends StatefulWidget {
  @override
  State<HomeTabHeader> createState() => _HomeTabHeaderState();
}

class _HomeTabHeaderState extends State<HomeTabHeader> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24), bottomRight: Radius.circular(24)),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          child: DefaultTabController(
            length: CategoryModel.categories.length,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back ✨',
                  style: textTheme.bodyMedium!.copyWith(color: Colors.white),
                ),
                Text(
                  'John Safwat',
                  style: textTheme.labelMedium,
                ),
                SizedBox(height: 8),
                TabBar(
                  onTap: (index) {
                    selectedIndex = index;
                    setState(() {});
                  },
                  tabAlignment: TabAlignment.start,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  isScrollable: true,
                  tabs: CategoryModel.categories
                      .map(
                        (category) => TabItem(
                          categoryModel: category,
                          isSelected: selectedIndex ==
                              CategoryModel.categories.indexOf(category),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
