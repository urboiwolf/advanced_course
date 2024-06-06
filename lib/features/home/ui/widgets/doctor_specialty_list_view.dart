import 'package:advanced_course/features/home/data/models/specialization_response_model.dart';
import 'package:advanced_course/features/home/ui/widgets/doctors_specialization_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialtyListView extends StatelessWidget {
  const DoctorSpecialtyListView(
      {super.key, required this.specializationsDataList});
  final List<SpecializationsData?> specializationsDataList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specializationsDataList.length,
          itemBuilder: (context, index) => DoctorSpecialtyListViewItem(
                specializationsData: specializationsDataList[index],
                itemIndex: index,
              )),
    );
  }
}
