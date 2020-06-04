import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_text_style.dart';
import 'package:ymatou/home/models/ymt_home_category_model.dart';

class YMTHomeCategory extends StatelessWidget {
  final List<YMTHomeCategoryModel> _categoryList = <YMTHomeCategoryModel>[
    YMTHomeCategoryModel(
      name: '服饰鞋履',
      pic: 'http://pic1.ymatou.com/G03/M03/29/CA/CgzUIV7VqNyAeLBBAAAhMDeG-V0071_1_1_o.png'
    ),
    YMTHomeCategoryModel(
      name: '箱包钟首',
      pic: 'http://pic1.ymatou.com/G03/M03/29/FC/CgzUH17VqOWANR-xAAAecyZ4WPk674_1_1_o.png'
    ),
    YMTHomeCategoryModel(
      name: '美妆个护',
      pic: 'http://pic1.ymatou.com/G03/M07/29/F7/CgzUIF7VqOuAVor1AAAeHJI6cd8047_1_1_o.png'
    ),
    YMTHomeCategoryModel(
      name: '居家百货',
      pic: 'http://pic1.ymatou.com/G03/M06/29/F7/CgzUIF7VqPKAVA5HAAAaYefjz2s022_1_1_o.png'
    ),
    YMTHomeCategoryModel(
      name: '全部分类',
      pic: 'http://pic1.ymatou.com/G03/M07/29/F7/CgzUIF7VqPqAHmLBAAAdlmdQh2E152_1_1_o.png'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _categoryList.map((category) {
          return YMTHomeCategoryItem(category: category);
        }).toList(),
      ),
    );
  }
}

class YMTHomeCategoryItem extends StatelessWidget {
  final YMTHomeCategoryModel category;
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
              style: black_11,
            ),
          ],
        ),
      ),
    );
  }
}