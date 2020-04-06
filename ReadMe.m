//
//  ReadMe.m
//  SinaWeiBo
//
//  Created by 李鸿飞 on 2019/7/16.
//  Copyright © 2019 李鸿飞. All rights reserved.
//

#import <Foundation/Foundation.h>
0.
    *需求 --> 仿写新浪微博首页
    *素材 --> 新浪App里面找
    *文档 --> 官方平台文档

1. 新建项目需要的配置
    *AppIcon:
        *不是所有的icon都是需要配置的,Spotilight是可以不用配置
        *icon对应的格子放大多的图:xxpt的格子,@xx-->xx*3
    *启动图配置:
        *"LaunchScreen.xib"只能支持iOS8系统
        *启动图对开发的影响
        *如果只配置4s的启动图,没有配置5s的启动图,在5s上面会出现黑条
        *如果没有配置6的启动图,跑在6上面,整个界面会被拉大(往下找,找到5s)
        *如果没有配置6p的启动图,没配置过6的启动图,跑在6p上面,整个界面会被拉大(往下找,找到5s)
        *如果没配置6p的启动图,配置过6的启动图,跑在6p上面,不会往下找,因为其自己的屏幕缩放比例与6的不一样
        *Display zoom模式:只有6与6p上面才有,开启与否会决定我们开发的点坐标系是大小

        *启动图与图标的尺寸一定要配置正确
        *图标不要使用透明色
2.自定义TabBarController
    *抽取添加子控制器的方法
    *去掉图片被系统渲染的方法-->用代码,还可以直接在资源文件的右边面板指定
    *如果射击湿把tabbar的图标与文字切在起,我们会遇到图标偏上,可以使用imageInsets

3.pch文件配置
    *NSLog输出调试状态与上线状态的输出-->DEBUG这么一个宏决定
    *定义宏的时候,如果宏是要接受参数话,可变参数用...表示


4.UITabBar自定义-->添加一个加号按钮
    *调整子控件的位置
    *自定义控件的协议一定要继承于父控件的协议
    *@dynamic修饰符,标识一个成员的get与set方法已经实现

    UITabBarItem-->相当于一个保存数据的模型
    UITabBarButton-->是一个View,显示什么数据是由UITabBarItem
    UITabBar -->是一个View,归TabBarController管理

    navigationItem-->模型
    navigationBar-->View

5.首页顶部导航栏内容
    *UIBarButtonItem分类的抽取
    *titleView的设置-->如果文字变短,titleView的宽度与位置需要我自己更新

6.功能:从根控制push到第二个控制器的时候,第二个控制器的左上角返回按钮的文字是"第一个控制器的title",从第二个控制器push到第三个控制器,第三个控制器的左上角返回按钮的文字是"返回"

    *自定义UINavigationController
    *可以把设置返回按钮的逻辑封装到内部
    *封装隐藏底部TabBar逻辑


