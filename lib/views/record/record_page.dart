import 'package:flutter/material.dart';
import 'package:s0ck_teacher/submodule/constants/color.dart';
import 'package:s0ck_teacher/submodule/constants/text_style.dart';
import 'package:s0ck_teacher/views/home/home_page.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/calender.png'),
                const SizedBox(height: 20),
                Text(
                  '7월 2일',
                  style: S0ckTextStyle.subTitle1.copyWith(
                    color: S0ckColor.gray900,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: S0ckColor.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      List? subjects = [
                        null,
                        '실용경제',
                        '실용경제',
                        null,
                        null,
                        '임베디드실무',
                        '임베디드실무',
                      ];

                      List? locate = [
                        null,
                        '3학년 3반',
                        '3학년 3반',
                        null,
                        null,
                        '2학년 3반',
                        '2학년 3반',
                      ];
                      return ClassInfoWidget(
                        index: index + 1,
                        subject: subjects[index],
                        locate: locate[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 4);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
