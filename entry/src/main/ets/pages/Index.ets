import { ActionBar, MenuType } from '@abner/bar'

@Entry
@Component
struct Index {
  build() {
    Scroll() {
      Column() {

        ActionBar({
          title: "普通单标题",
          onTitleClick: () => {
            console.log("===========点击")
          }
        }).backgroundColor(Color.White)

        ActionBar({
          title: "左侧文字按钮",
          leftText: "返回",
          onLeftClick: () => {
            console.log("====点击了左侧按钮")
          },
        }).backgroundColor(Color.White)
          .margin({ top: 10 })

        ActionBar({
          title: "左侧图片按钮",
          leftIcon: $r("app.media.app_icon"),
          onLeftClick: () => {
            console.log("====点击了左侧按钮")
          },
        }).backgroundColor(Color.White)
          .margin({ top: 10 })

        ActionBar({
          title: "右侧文字按钮", rightText: "编辑",
          onRightClick: () => {
            console.log("====点击了右侧按钮")
          }
        }).backgroundColor(Color.White)
          .margin({ top: 10 })

        ActionBar({
          title: "右侧图片按钮",
          rightIcon: $r("app.media.app_icon"),
          onRightClick: () => {
            console.log("====点击了右侧按钮")
          }
        }).backgroundColor(Color.White)
          .margin({ top: 10 })

        ActionBar({
          title: "左右文字按钮",
          leftText: "返回",
          rightText: "编辑",
          onLeftClick: () => {
            console.log("====点击了左侧按钮")
          },
          onRightClick: () => {
            console.log("====点击了右侧按钮")
          }
        }).backgroundColor(Color.White)
          .margin({ top: 10 })


        ActionBar({
          title: "左右图片按钮",
          rightIcon: $r("app.media.app_icon"),
          leftIcon: $r("app.media.app_icon"),
          onLeftClick: () => {
            console.log("====点击了左侧按钮")
          },
          onRightClick: () => {
            console.log("====点击了右侧按钮")
          }
        }).backgroundColor(Color.White)
          .margin({ top: 10 })


        ActionBar({
          title: "左侧文字双按钮",
          leftText: "按钮1",
          left2Text: "按钮2",
          leftMenuAttribute: {
            textMargin: { right: 10 }
          },
          onLeftTextClick: (position) => {
            console.log("====点击了左侧按钮:" + position)
          }
        }).backgroundColor(Color.White)
          .margin({ top: 10 })

        ActionBar({
          title: "左侧图片双按钮",
          leftIcon: $r("app.media.app_icon"),
          left2Icon: $r("app.media.app_icon"),
          leftMenuAttribute: {
            imageMargin: { right: 10 }
          },
          onLeftImageClick: (position) => {
            console.log("====点击了左侧按钮:" + position)
          }
        }).backgroundColor(Color.White)
          .margin({ top: 10 })

        ActionBar({
          title: "右侧文字双按钮",
          rightText: "按钮1",
          right2Text: "按钮2",
          rightMenuAttribute: {
            textMargin: { left: 10 }
          },
          onRightTextClick: (position) => {
            console.log("====点击了右侧按钮:" + position)
          }
        }).backgroundColor(Color.White)
          .margin({ top: 10 })


        ActionBar({
          title: "右侧图片双按钮",
          rightIcon: $r("app.media.app_icon"),
          right2Icon: $r("app.media.app_icon"),
          rightMenu2Attribute: {
            imageMargin: { left: 10 }
          },
          onRightImageClick: (position) => {
            console.log("====点击了右侧按钮:" + position)
          }
        }).backgroundColor(Color.White)
          .margin({ top: 10 })


        ActionBar({
          title: "左右文字双按钮",
          leftText: "按钮1",
          left2Text: "按钮2",
          leftMenuAttribute: {
            textMargin: { right: 10 }
          },
          onLeftTextClick: (position) => {
            console.log("====点击了左侧按钮:" + position)
          },
          rightText: "按钮1",
          right2Text: "按钮2",
          rightMenuAttribute: {
            textMargin: { left: 10 }
          },
          onRightTextClick: (position) => {
            console.log("====点击了右侧按钮:" + position)
          }
        }).backgroundColor(Color.White)
          .margin({ top: 10 })


        ActionBar({
          title: "左侧图文",
          leftText: "返回",
          leftIcon: $r("app.media.app_icon"),
          leftMenuType: MenuType.IMAGE_TEXT,
          leftMenuAttribute: {
            imageMargin: {
              right: 10
            }
          },
          onLeftClick: () => {
            console.log("============点击了整个")
          }
        }).backgroundColor(Color.White)
          .margin({ top: 10 })


        ActionBar({
          title: "左侧文图",
          leftText: "返回",
          leftIcon: $r("app.media.app_icon"),
          leftMenuType: MenuType.TEXT_IMAGE,
          leftMenuAttribute: {
            textMargin: {
              right: 10
            }
          },
          onLeftClick: () => {
            console.log("============点击了整个")
          }
        }).backgroundColor(Color.White)
          .margin({ top: 10 })


        ActionBar({
          title: "右侧图文",
          rightText: "编辑",
          rightIcon: $r("app.media.app_icon"),
          rightMenuType: MenuType.IMAGE_TEXT,
          rightMenuAttribute: {
            imageMargin: {
              right: 10
            }
          },
          onRightClick: () => {
            console.log("============点击了整个")
          }
        }).backgroundColor(Color.White)
          .margin({ top: 10 })


        ActionBar({
          title: "右侧文图",
          rightText: "编辑",
          rightIcon: $r("app.media.app_icon"),
          rightMenuType: MenuType.TEXT_IMAGE,
          rightMenuAttribute: {
            textMargin: {
              right: 10
            }
          },
          onRightClick: () => {
            console.log("============点击了整个")
          }
        }).backgroundColor(Color.White)
          .margin({ top: 10 })

        ActionBar({
          titleLayout: this.titleLayout
        }).backgroundColor(Color.White)
          .margin({ top: 10 })

        ActionBar({
          title: "左侧按钮自己定义",
          leftMenuLayout: this.leftMenuLayout
        }).backgroundColor(Color.White)
          .margin({ top: 10 })

        ActionBar({
          title: "右侧按钮自己定义",
          rightMenuLayout: this.rightMenuLayout
        }).backgroundColor(Color.White)
          .margin({ top: 10 })
      }
    }.height('100%')
    .width('100%')
    .backgroundColor("#e8e8e8")
    .align(Alignment.TopStart)
  }

  @Builder
  titleLayout() {
    Row() {
      Image($r("app.media.app_icon"))
        .width(20)
        .height(20)
      Text("我是自定义的标题")
        .margin({ left: 10 })
    }.height("100%")
    .justifyContent(FlexAlign.Center)
  }

  @Builder
  leftMenuLayout() {
    Row() {
      Text("按钮1")
      Text("按钮2")
    }
  }

  @Builder
  rightMenuLayout() {
    Row() {
      Text("按钮1")
      Text("按钮2")
    }
  }
}