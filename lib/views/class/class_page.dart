import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:s0ck_teacher/submodule/constants/color.dart';
import 'package:s0ck_teacher/submodule/constants/text_style.dart';

const List<String> list = [
  '강해민',
  '고은총',
  '안승민',
  '양윤호',
  '오재영',
  '오현규',
  '유지우',
  '이은성',
  '이태규',
  '조현민',
  '최유준',
  '최은빈',
  '최희영',
];

const List<int> num = [
  3301,
  3302,
  3304,
  3305,
  3306,
  3307,
  3308,
  3309,
  3310,
  3311,
  3312,
  3313,
  3314,
];

class ClassPage extends StatelessWidget {
  const ClassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: S0ckColor.gray50,
        automaticallyImplyLeading: false,
        titleSpacing: 20,
        scrolledUnderElevation: 0,
        centerTitle: false,
        title: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Symbols.chevron_left_rounded,
            size: 28,
            color: S0ckColor.gray500,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: S0ckColor.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 46,
                        child: Text(
                          '2교시',
                          style: S0ckTextStyle.subTitle2.copyWith(
                            color: S0ckColor.gray800,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        '실용경제',
                        style: S0ckTextStyle.subTitle2.copyWith(
                          color: S0ckColor.gray800,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        '3학년 3반',
                        style: S0ckTextStyle.subTitle2.copyWith(
                          color: S0ckColor.gray800,
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
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 46,
                                      child: Text(
                                        num[index].toString(),
                                        style: S0ckTextStyle.subTitle2.copyWith(
                                          color: S0ckColor.gray700,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      list[index],
                                      style: S0ckTextStyle.subTitle2.copyWith(
                                        color: S0ckColor.gray900,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '출석 완료',
                                  style: S0ckTextStyle.subTitle3.copyWith(
                                    color: S0ckColor.main300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 20);
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
