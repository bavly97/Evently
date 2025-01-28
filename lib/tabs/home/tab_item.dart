import 'package:evently/models/category_model.dart';
import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  CategoryModel categoryModel;
  Color backgroundColor;
  Color foregroundColor;
  Color selectedForegroundColor;
  bool isSelected;

  TabItem(
      {required this.categoryModel,
      required this.backgroundColor,
      required this.foregroundColor,
      required this.selectedForegroundColor,
      this.isSelected = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? backgroundColor : Colors.transparent,
        border: Border.all(
          color: isSelected ? Colors.transparent : foregroundColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(46),
      ),
      child: Row(
        children: [
          Icon(
            categoryModel.icon,
            color: isSelected ? selectedForegroundColor : foregroundColor,
          ),
          SizedBox(width: 8),
          Text(
            categoryModel.name,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: isSelected ? selectedForegroundColor : foregroundColor,
                ),
          )
        ],
      ),
    );
  }
}
