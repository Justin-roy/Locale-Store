import 'package:flutter/material.dart';

import 'package:locale_store/constant/app_color.dart';
import 'package:locale_store/core/model/Search.dart';

class PopularSearchCard extends StatelessWidget {
  final PopularSearch data;
  final void Function()? onTap;
  const PopularSearchCard({
    Key? key,
    required this.data,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width / 2,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Container(
              width: 46,
              height: 46,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: AppColor.primarySoft,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('${data.imageUrl}'),
                ),
              ),
            ),
            Expanded(
              child: Text('${data.title}'),
            ),
          ],
        ),
      ),
    );
  }
}
