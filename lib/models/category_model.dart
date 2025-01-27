import 'package:flutter/material.dart';

class CategoryModel {
  int id;
  String name;
  String imageName;
  IconData icon;

  CategoryModel(
      {required this.id,
      required this.name,
      required this.imageName,
      required this.icon});

  static List<CategoryModel> categories = [
    CategoryModel(
        id: 1,
        name: 'Sport',
        imageName: 'sport',
        icon: Icons.sports_baseball_rounded),
        CategoryModel(
        id: 2,
        name: 'Birthday',
        imageName: 'birthday',
        icon: Icons.cake_outlined),
        CategoryModel(
        id: 3,
        name: 'Meeting',
        imageName: 'meeting',
        icon: Icons.mode_edit_outline),
        CategoryModel(
        id: 4,
        name: 'Gaming',
        imageName: 'gaming',
        icon: Icons.videogame_asset_outlined),
        CategoryModel(
        id: 5,
        name: 'Eating',
        imageName: 'eating',
        icon: Icons.food_bank_outlined),
        CategoryModel(
        id: 6,
        name: 'Holiday',
        imageName: 'holiday',
        icon: Icons.hotel_outlined),
        CategoryModel(
        id: 7,
        name: 'Exhibtion',
        imageName: 'exhibtion',
        icon: Icons.forest_rounded),
        CategoryModel(
        id: 8,
        name: 'Work Shop',
        imageName: 'work_shop',
        icon: Icons.work_history_outlined),
        CategoryModel(
        id: 9,
        name: 'Book Club',
        imageName: 'book_club',
        icon: Icons.menu_book_sharp),
  ];
}
