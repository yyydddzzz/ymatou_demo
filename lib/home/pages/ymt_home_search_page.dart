import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_asset_path.dart';
import 'package:ymatou/common/ymt_text_style.dart';

class YMTSeachBarDelegate extends SearchDelegate<String> {
  final String searchFieldLabel;

  YMTSeachBarDelegate({this.searchFieldLabel}) : super(searchFieldLabel: searchFieldLabel);

  // @override
  // ThemeData appBarTheme(BuildContext context) {
  //   return ThemeData(

  //   );
  // }

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Text(
          '搜索',
          style: red_16_w600,
        ),
        onPressed: () {},
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Image.asset(svg_black_back),
      onPressed: () => close(context, ''),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 8),
                height: 38,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 22, bottom: 0),
                      child: Text(
                        '最近搜索',
                        style: light_grey_15,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(ic_cart_delete),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 22, top: 2, right: 22, bottom: 8),
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: <Widget>[
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffcecece)),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                      onPressed: () {},
                      child: Text(
                        '耳机',
                        style: black87_13,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 22),
                  child: Text(
                    '热门推荐',
                    style: light_grey_15,
                  ),
              ),
              Container(
                padding: EdgeInsets.only(left: 22, top: 8, right: 22, bottom: 8),
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: <Widget>[
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffcecece)),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                      onPressed: () {},
                      child: Text(
                        '香奈儿coco口红',
                        style: black87_13,
                      ),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffcecece)),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                      onPressed: () {},
                      child: Text(
                        '女包迷你',
                        style: black87_13,
                      ),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffcecece)),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                      onPressed: () {},
                      child: Text(
                        'ysl口红12',
                        style: black87_13,
                      ),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffcecece)),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                      onPressed: () {},
                      child: Text(
                        '日本美白面膜',
                        style: black87_13,
                      ),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffcecece)),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                      onPressed: () {},
                      child: Text(
                        '男包范思哲',
                        style: black87_13,
                      ),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffcecece)),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                      onPressed: () {},
                      child: Text(
                        '香奈儿五号香水',
                        style: black87_13,
                      ),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffcecece)),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                      onPressed: () {},
                      child: Text(
                        '男鞋ck',
                        style: black87_13,
                      ),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffcecece)),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                      onPressed: () {},
                      child: Text(
                        '巴宝莉香水男士',
                        style: black87_13,
                      ),
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xffcecece)),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                      onPressed: () {},
                      child: Text(
                        '意大利女包',
                        style: black87_13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}