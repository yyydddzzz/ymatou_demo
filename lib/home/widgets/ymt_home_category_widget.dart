import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_text_style.dart';
import 'package:ymatou/home/models/ymt_home_data_model.dart';

class YMTHomeCategory extends StatelessWidget {
  final List<SubChannel> categoryList;

  YMTHomeCategory({@required this.categoryList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: categoryList.map((category) {
          return YMTHomeCategoryItem(category: category);
        }).toList(),
      ),
    );
  }
}

class YMTHomeCategoryItem extends StatelessWidget {
  final SubChannel category;
  YMTHomeCategoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(category);
      },
      child: Container(
        padding: EdgeInsets.all(2.0),
        width: 50,
        height: 62,
        child: Column(
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              child: Image.network(category.pic),
            ),
            SizedBox(height: 2,),
            Text(
              category.name,
              style: black54_11,
            ),
          ],
        ),
      ),
    );
  }
}