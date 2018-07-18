import 'package:flutter/material.dart';
import 'package:gsy_github_app_flutter/common/model/User.dart';
import 'package:gsy_github_app_flutter/common/style/GSYStyle.dart';
import 'package:gsy_github_app_flutter/widget/GSYCardItem.dart';
import 'package:gsy_github_app_flutter/widget/GSYIConText.dart';

/**
 * Created by guoshuyu
 * Date: 2018-07-17
 */
class UserHeaderItem extends StatelessWidget {
  final User userInfo;

  UserHeaderItem(this.userInfo);

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new GSYCardItem(
            color: Color(GSYColors.primaryValue),
            margin: EdgeInsets.all(0.0),
            shape: new RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0))),
            child: new Padding(
              padding: new EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new ClipOval(
                        child: new FadeInImage.assetNetwork(
                          placeholder: "static/images/logo.png",
                          //预览图
                          fit: BoxFit.fitWidth,
                          image: userInfo.avatar_url == null ? "http://null" : userInfo.avatar_url,
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                      new Padding(padding: EdgeInsets.all(10.0)),
                      new Expanded(
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(userInfo.login == null ? "" : userInfo.login, style: GSYConstant.largeTextWhiteBold),
                            new Text(userInfo.name == null ? "" : userInfo.name, style: GSYConstant.subLightSmallText),
                            new GSYIConText(
                              GSYICons.USER_ITEM_COMPANY,
                              userInfo.company == null ? GSYStrings.nothing_now : userInfo.company,
                              GSYConstant.subLightSmallText,
                              Color(GSYColors.subLightTextColor),
                              10.0,
                              padding: 3.0,
                            ),
                            new GSYIConText(
                              GSYICons.USER_ITEM_LOCATION,
                              userInfo.location == null ? GSYStrings.nothing_now : userInfo.location,
                              GSYConstant.subLightSmallText,
                              Color(GSYColors.subLightTextColor),
                              10.0,
                              padding: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  new Container(
                      child: new GSYIConText(
                        GSYICons.USER_ITEM_LINK,
                        userInfo.blog == null ? GSYStrings.nothing_now : userInfo.blog,
                        GSYConstant.subLightSmallText,
                        Color(GSYColors.subLightTextColor),
                        10.0,
                        padding: 3.0,
                      ),
                      margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                      alignment: Alignment.topLeft),
                  new Container(
                      child: new Text(
                        userInfo.bio == null ? GSYStrings.nothing_now : userInfo.bio,
                        style: GSYConstant.subLightSmallText,
                        overflow: TextOverflow.ellipsis,
                      ),
                      margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                      alignment: Alignment.topLeft),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Divider(
                    color: Color(GSYColors.subLightTextColor),
                  ),
                  new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Expanded(
                        child: new Center(
                          child: new Text(GSYStrings.user_tab_repos + "\n" + (userInfo.public_repos == null ? "" : userInfo.public_repos.toString()),
                              textAlign: TextAlign.center, style: GSYConstant.subSmallText),
                        ),
                      ),
                      new Container(width: 0.3, height: 40.0, color: Color(GSYColors.subLightTextColor)),
                      new Expanded(
                        child: new Center(
                          child: new Text(GSYStrings.user_tab_fans + "\n" + (userInfo.followers == null ? "" : userInfo.followers.toString()),
                              textAlign: TextAlign.center, style: GSYConstant.subSmallText),
                        ),
                      ),
                      new Container(width: 0.3, height: 40.0, color: Color(GSYColors.subLightTextColor)),
                      new Expanded(
                        child: new Center(
                          child: new Text(GSYStrings.user_tab_focus + "\n" + (userInfo.following == null ? "" : userInfo.following.toString()),
                              textAlign: TextAlign.center, style: GSYConstant.subSmallText),
                        ),
                      ),
                      new Container(width: 0.3, height: 40.0, color: Color(GSYColors.subLightTextColor)),
                      new Expanded(
                        child: new Center(
                          child: new Text(GSYStrings.user_tab_star + "\n---", textAlign: TextAlign.center, style: GSYConstant.subSmallText),
                        ),
                      ),
                      new Container(width: 0.3, height: 40.0, color: Color(GSYColors.subLightTextColor)),
                      new Expanded(
                        child: new Center(
                          child: new Text(GSYStrings.user_tab_honor + "\n---", textAlign: TextAlign.center, style: GSYConstant.subSmallText),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
        new Container(
            child: new Text(
              GSYStrings.user_dynamic_title,
              style: GSYConstant.normalTextBold,
              overflow: TextOverflow.ellipsis,
            ),
            margin: new EdgeInsets.only(top: 15.0, bottom: 15.0, left: 12.0),
            alignment: Alignment.topLeft),
      ],
    );
  }
}