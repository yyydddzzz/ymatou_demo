import 'dart:async';
import 'package:flutter/material.dart';
import '../../common/ymt_asset_path.dart';
import '../../common/ymt_text_style.dart';

enum YMTLoginFieldType {
  Message,
  Password
}

class YMTLoginPage extends StatefulWidget {
  YMTLoginPage({Key key}) : super(key: key);

  @override
  _YMTLoginPageState createState() => _YMTLoginPageState();
}

class _YMTLoginPageState extends State<YMTLoginPage> {
  final StreamController<YMTLoginFieldType> _loginSwitchCtl = StreamController<YMTLoginFieldType>.broadcast();

  @override
  void dispose() {
    _loginSwitchCtl.close();
    super.dispose();
  }

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
                StreamBuilder(
                  stream: _loginSwitchCtl.stream,
                  initialData: YMTLoginFieldType.Message,
                  builder: (BuildContext context, AsyncSnapshot snapshot){
                    return Container(
                      child: Wrap(
                        spacing: 80,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  if (snapshot.data != YMTLoginFieldType.Message) {
                                    _loginSwitchCtl.sink.add(YMTLoginFieldType.Message);
                                  }
                                },
                                child: Text(
                                  '快速登录',
                                  style: TextStyle(
                                    color: snapshot.data == YMTLoginFieldType.Message ? Colors.red : Colors.grey,
                                    decoration: TextDecoration.none,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              if (snapshot.data != YMTLoginFieldType.Password) {
                                _loginSwitchCtl.sink.add(YMTLoginFieldType.Password);
                              }
                            },
                            child: Text(
                              '密码登录',
                              style: TextStyle(
                                color: snapshot.data == YMTLoginFieldType.Password ? Colors.red : Colors.grey,
                                decoration: TextDecoration.none,
                                fontSize: 13,
                                fontWeight: FontWeight.normal
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 15,),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0xffe6e6e6)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: StreamBuilder(
                    stream: _loginSwitchCtl.stream,
                    initialData: YMTLoginFieldType.Message,
                    builder: (BuildContext context, AsyncSnapshot snapshot){
                      print('object');
                      return Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: UnderlineTabIndicator(
                                borderSide: BorderSide(width: 1, color: Color(0xffe6e6e6)),
                                insets: EdgeInsets.only(left: 40, right: 12)
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(left: 12, top: 3, right: 15),
                                    child: Image.asset(ic_mobile),
                                  ),
                                  Container(
                                    width: 200,
                                    child: TextField(
                                      keyboardType: TextInputType.phone,
                                      style: TextStyle(fontSize: 15),
                                      decoration: InputDecoration.collapsed(
                                        hintText: snapshot.data == YMTLoginFieldType.Message ? '手机号' : '昵称/邮箱/手机号',
                                        hintStyle: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: UnderlineTabIndicator(
                                borderSide: BorderSide(width: 1, color: Color(0xffe6e6e6)),
                                insets: EdgeInsets.only(left: 40, right: 12)
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(left: 12, top: 3, right: 12),
                                    child: Image.asset(ic_message),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      keyboardType: TextInputType.phone,
                                      style: TextStyle(fontSize: 15),
                                      decoration: InputDecoration.collapsed(
                                        hintText: snapshot.data == YMTLoginFieldType.Message ? '短信验证码' : '登陆密码',
                                        hintStyle: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                      border: Border(left: BorderSide(width: 1, color: Color(0xffe6e6e6)))
                                    ),
                                    padding: EdgeInsets.only(left: 3, right: snapshot.data == YMTLoginFieldType.Message ? 0 : 5),
                                    child: FlatButton(
                                      onPressed: () {},
                                      child: Text(
                                        snapshot.data == YMTLoginFieldType.Message ? '获取验证码' : '忘记密码',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black87
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 300,
                              padding: EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8),
                              child: FlatButton(
                                color: Color(0xffe6e6e6),
                                onPressed: () {},
                                child: Text(
                                  '登录',
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    '注册账号',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 13
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  '第三方授权登录',
                  style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.normal
                  ),
                ),
                SizedBox(height: 16,),
                Wrap(
                  spacing: 30,
                  children: <Widget>[
                    Image.asset(login_sina),
                    Image.asset(login_qq),
                    Image.asset(login_weixin),
                    Image.asset(login_ali),
                  ],
                ),
              ],
            ),
          ),
          StreamBuilder(
            stream: _loginSwitchCtl.stream,
            initialData: YMTLoginFieldType.Message,
            builder: (BuildContext context, AsyncSnapshot snapshot){
              return Container(
                child: Positioned(
                  top: 120,
                  left: snapshot.data == YMTLoginFieldType.Message ? 106 : 238,
                  child: Image.asset(ic_login_indicator,),
                ),
              );
            },
          ),
          Positioned(
            top: 25,
            right: 8,
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Image.asset(ic_prod_auth_dialog_delete, width: 15, height: 15,),
            ),
          ),
        ],
      ),
    );
  }
}
