import 'package:evently/app_theme.dart';
import 'package:evently/models/category_model.dart';
import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  CategoryModel categoryModel;
  bool isSelected;
  TabItem({required this.categoryModel, this.isSelected = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppTheme.white : Colors.transparent,
        border: Border.all(
          color: AppTheme.white,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(46),
      ),
      child: Row(
        children: [
          Icon(
            categoryModel.icon,
            color: isSelected ? AppTheme.primary : AppTheme.white,
          ),
          SizedBox(width: 8),
          Text(
            categoryModel.name,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: isSelected ? AppTheme.primary : AppTheme.white,
                ),
          )
        ],
      ),
    );
  }
}
