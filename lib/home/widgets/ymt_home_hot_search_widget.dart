import 'package:flutter/material.dart';
import 'package:ymatou/common/ymt_text_style.dart';

class YMTHomeHotSearchView extends StatelessWidget {
  final List<String> _hotWords = <String>[
    '苹果11',
    'switch',
    '手机',
    'lv 女包',
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 8,),
        Text(
          '热搜：',
          style: TextStyle(
            fontSize: 10,
            color: Colors.white,
          ),
        ),
        Wrap(
          spacing: 6,
          children: _hotWords.map((hotWord) {
            return HotWordChip(hotWord: hotWord);
          }).toList(),
        )
      ],
    );
  }
} 

class HotWordChip extends StatelessWidget {
  final String hotWord;
  HotWordChip({this.hotWord});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 22.0,
      child: FlatButton(
        color: Colors.white.withOpacity(0.15),
        onPressed: () {}, 
        child: Text(
          this.hotWord,
          style: white_11,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(11.0))
        ),
      ),
    );
  }
}