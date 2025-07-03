import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:s0ck_teacher/submodule/constants/color.dart';
import 'package:s0ck_teacher/submodule/constants/text_style.dart';
import 'package:s0ck_teacher/views/class/class_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: S0ckColor.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '임베디드실무, 실용경제',
                        style: S0ckTextStyle.body1.copyWith(
                          color: S0ckColor.gray500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '김학동 선생님',
                        style: S0ckTextStyle.subTitle2.copyWith(
                          color: S0ckColor.gray900,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
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

class ClassInfoWidget extends StatelessWidget {
  const ClassInfoWidget({
    super.key,
    required this.index,
    this.subject,
    this.locate,
  });

  final int index;
  final String? subject;
  final String? locate;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => subject != null
            ? Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => const ClassPage()))
            : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 46,
                    child: Text(
                      '$index교시',
                      style: S0ckTextStyle.subTitle2.copyWith(
                        color: S0ckColor.gray700,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subject ?? '-',
                        style: S0ckTextStyle.subTitle2.copyWith(
                          color: S0ckColor.gray900,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        locate ?? '',
                        style: S0ckTextStyle.body1.copyWith(
                          color: S0ckColor.gray500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Symbols.chevron_right_rounded,
                size: 24,
                color: subject != null ? S0ckColor.gray500 : S0ckColor.gray100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
