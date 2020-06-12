import 'package:flutter/material.dart';
import '../../common/ymt_asset_path.dart';
import '../../common/ymt_text_style.dart';

class YMTLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 100),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Wrap(
                  spacing: 80,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        '快速登录',
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        '密码登录',
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Container(
                  width: MediaQuery.of(context).size.width - 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(ic_mobile, height: 25, width: 25),
                          hintText: '手机号',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(ic_message, height: 25, width: 25),
                          hintText: '短信验证码',
                        ),
                      ),
                      Container(
                        width: 300,
                        padding: EdgeInsets.all(16),
                        child: FlatButton(
                          color: Colors.grey,
                          onPressed: () {},
                          child: Text(
                            '登录',

                          ),
                        ),
                      )
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    '注册账号',
                    style: TextStyle(
                      decoration: TextDecoration.underline
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  '第三方授权登录',
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                    fontSize: 15,
                    fontWeight: FontWeight.normal
                  ),
                ),
                SizedBox(height: 20,),
                Wrap(
                  spacing: 30,
                  children: <Widget>[
                    Image.asset(login_sina),
                    Image.asset(login_qq),
                    Image.asset(login_weixin),
                    Image.asset(login_ali),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 30,
            right: 30,
            child: FlatButton(
              color: Colors.red,
              onPressed: () {},
              child: Icon(Icons.delete),
            ),
          ),
        ],
      ),
    );
  }
}