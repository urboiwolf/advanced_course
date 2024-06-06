import 'package:advanced_course/features/home/data/models/specialization_response_model.dart';
import 'package:advanced_course/features/home/ui/widgets/doctors_listview_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, this.doctorsList});
  final List<Doctors?>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorListViewItem(
            doctorsModel: doctorsList?[index],
          );
        },
      ),
    );
  }
}
