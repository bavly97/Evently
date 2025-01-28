import 'package:evently/app_theme.dart';
import 'package:evently/models/category_model.dart';
import 'package:evently/tabs/home/tab_item.dart';
import 'package:evently/widgets/custom_elevated_button.dart';
import 'package:evently/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class CreateEventScreen extends StatefulWidget {
  static const routeName = '/create-event-screen';

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  int selectedIndex = 0;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  DateFormat dateFormat = DateFormat('d-M-yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Event'),
      ),
      body: DefaultTabController(
        length: CategoryModel.categories.length,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                      fit: BoxFit.fill,
                      height: MediaQuery.sizeOf(context).height * 0.25,
                      width: double.infinity,
                      'assets/images/${CategoryModel.categories[selectedIndex].imageName}.png'),
                ),
              ),
              SizedBox(height: 16),
              TabBar(
                padding: EdgeInsets.symmetric(horizontal: 8),
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                isScrollable: true,
                tabs: CategoryModel.categories
                    .map(
                      (category) => TabItem(
                        backgroundColor: AppTheme.primary,
                        foregroundColor: AppTheme.primary,
                        selectedForegroundColor: AppTheme.white,
                        categoryModel: category,
                        isSelected: selectedIndex ==
                            CategoryModel.categories.indexOf(category),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.all(16),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "title can't be empty";
                          }
                          return null;
                        },
                        controller: titleController,
                        hintText: 'Event Title',
                        iconName: 'event_title',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Description',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CustomTextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "description can't be empty";
                          }
                          return null;
                        },
                        controller: descriptionController,
                        maxLines: 3,
                        hintText: 'Event Description',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/date.svg',
                            height: 24,
                            width: 24,
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Event Date',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () async {
                              DateTime? date = await showDatePicker(
                                context: context,
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now().add(
                                  Duration(days: 365),
                                ),
                                initialEntryMode: DatePickerEntryMode.calendar,
                                initialDate: selectedDate ?? DateTime.now(),
                              );
                              if (date != null) {
                                selectedDate = date;
                              }
                              setState(() {});
                            },
                            child: Text(
                              selectedDate == null
                                  ? 'Choose Date'
                                  : dateFormat.format(selectedDate!),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: AppTheme.primary),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/time.svg',
                            height: 24,
                            width: 24,
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Event Time',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () async {
                              TimeOfDay? time = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now());
                              if (time != null) {
                                selectedTime = time;
                              }
                              setState(() {});
                            },
                            child: Text(
                              selectedTime == null
                                  ? 'Choose Time'
                                  : selectedTime!.format(context),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: AppTheme.primary),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      CustomElevatedButton(
                          text: 'Add Event', onpressed: addEventPress),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addEventPress() {
    if (formKey.currentState!.validate() &&
        selectedDate != null &&
        selectedTime != null) {}
  }
}
