import 'package:dash_school/core/constants/app_colors.dart';
import 'package:dash_school/core/constants/constans.dart';
import 'package:dash_school/view/screens/home/widgets/coursol_slider.dart';
import 'package:dash_school/view/screens/home/widgets/dash_services.dart';
import 'package:dash_school/view/widgets/big_title_builder.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // mainAxisAlignment: MainAxisAlignment.center,
      // shrinkWrap: true,
      children: <Widget>[
        const _DashHomeHeader(),
        emptySpace,
        // const UserCardsList(),
        const CarsoulSlider(),
        emptySpace,
        Container(
          height: 150,
          color: AppColor.kPrimaryColor.withOpacity(.4),
          alignment: Alignment.center,
          child: const BigTitleBuilder(
            theTitle: 'متوقع هنا خدمات اضافية',
            textColor: AppColor.kPrimaryColor,
          ),
        ),

        emptySpace,
        // emptySpace,
        const DashServices(),
        emptySpace,
        emptySpace,
      ],
    );
  }
}

class _DashHomeHeader extends StatelessWidget {
  const _DashHomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            BigTitleBuilder(
              theTitle: 'السيد : انس حسن',
              textColor: AppColor.kPrimaryColor,
            ),
            emptySpace,
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            BigTitleBuilder(
              theTitle: 'ولي امر الطالب : انس حسن',
              textColor: AppColor.kPrimaryColor,
            ),
            emptySpace,
          ],
        ),
      ],
    );
  }
}
