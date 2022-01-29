import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zwork/components/text.dart';
import 'package:zwork/resource/app_colors.dart';

Widget vacancyCard() {
  return Container(
    width: 328,
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: AppColors.vacancyCard,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Название Вакансии',
                style: TextStyle(
                    fontSize: 16, fontFamily: GoogleFonts.roboto().fontFamily)),
            Spacer(),
            Text('2000 тг / час',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontWeight: FontWeight.w700,
                    color: AppColors.payment)),
          ],
        ),
        _jobBox(['Мода', 'Стиль', 'Частичная занятость', 'Ресторан']),
        Row(children: [
          Expanded(
              child: Text(
                  'dadsjkhfa asdfh alkjshd f kashdf  asdf ad fads ad fadf adf asdf adf adf asdf   alkjsdhf a alksjdf a dak kjahsdf kja   asdhf asd fkljads jsd fkajhds ffdf',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 14))),
          Icon(
            Icons.bookmark_outline,
            size: 30,
          )
        ])
      ],
    ),
  );
}

Widget _jobBox(List<String> titleList) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (var i = 0; i < titleList.length; i++)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: const Color(0xFF5E5E5E),
                      borderRadius: BorderRadius.circular(10)),
                  child: appText(titleList[i], color: Colors.white, size: 10),
                )
            ],
          ),
        ]),
  );
}
