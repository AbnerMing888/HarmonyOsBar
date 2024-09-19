# HarmonyOsBar

**HarmonyOSBar**，是一个标题栏组件，支持左右按钮，支持自定义组件，仅当做一个纯组件使用。

## 开发环境

DevEco Studio NEXT Developer Beta1,Build Version: 5.0.3.706

Api版本：**11**

modelVersion：5.0.0

## 快速使用

方式一：在需要Module中的oh-package.json5中设置三方包依赖，配置示例如下：

```
"dependencies": { "@abner/bar": "^1.0.0"}
```

方式二：在Terminal窗口中，执行如下命令安装三方包，DevEco Studio会自动在工程的oh-package.json5中自动添加三方包依赖。

**建议：在使用的模块路径下进行执行命令。**

```
ohpm install @abner/bar
```

## 一、初始化

初始化的作用，用于统一标题栏，比如宽高、字体颜色大小，统一点击事件等等,建议在AbilityStage中进行，属性
选择性调用，如果不需要，可以不设置。

```typescript
initActionBar({})
```

相关属性一览：

| 属性                    | 类型                                        | 概述                |
|-----------------------|-------------------------------------------|-------------------|
| barWidth              | Length                                    | 标题栏宽度             |
| barHeight             | Length                                    | 标题栏高度             |
| barBackgroundColor    | ResourceColor                             | 标题栏背景颜色           |
| onTitleClick          | 回调                                        | 标题点击事件            |
| leftText              | string/Resource                           | 左边按钮文字            |
| left2Text             | string/Resource                           | 左边第二个按钮文字         |
| leftMenuMargin        | Length                                    | 左边按钮，默认距离左边       |
| leftMenuBgColor       | ResourceColor                             | 左边背景颜色            |
| rightMenuBgColor      | ResourceColor                             | 右边背景颜色            |
| rightMenuMargin       | Length                                    | 右边按钮距离右边          |
| leftMenuWidth         | Length                                    | 左边按钮整体宽度          |
| leftMenuHeight        | Length                                    | 左边按钮整体高度          |
| rightMenuWidth        | Length                                    | 右边按钮宽度            |
| rightMenuHeight       | Length                                    | 右边按钮高度            |
| onLeftClick           | 回调                                        | 左边整体的点击           |
| onLeftTextClick       | 回调                                        | 左边文字按钮的点击         |
| onLeftImageClick      | 回调                                        | 左边图片按钮的点击         |
| onRightClick          | 回调                                        | 右边整体的点击           |
| onRightTextClick      | 回调                                        | 右边文字按钮的点击         |
| onRightImageClick     | 回调                                        | 右边图片按钮的点击         |
| leftIcon              | PixelMap/ ResourceStr/ DrawableDescriptor | 左边按钮第一个图标         |
| left2Icon             | PixelMap/ ResourceStr/ DrawableDescriptor | 左边按钮第二个图标         |
| rightIcon             | PixelMap/ ResourceStr/ DrawableDescriptor | 右边按钮第一个图标         |
| right2Icon            | PixelMap/ ResourceStr/ DrawableDescriptor | 右边按钮第二个图标         |
| hideLeftMenu          | boolean                                   | 隐藏左边按钮，默认不隐藏      |
| hideTitle             | boolean                                   | 隐藏标题，默认不隐藏        |
| hideRightMenu         | boolean                                   | 隐藏右边按钮，默认不隐藏      |
| isAvoidanceNavigation | boolean                                   | 是否避让导航，默认不避让      |
| titleAttribute        | TitleAttribute                            | 标题通用属性，颜色大小等      |
| leftMenuAttribute     | BarMenuAttribute                          | 左边第一个按钮通用属性，颜色大小等 |
| leftMenu2Attribute    | BarMenuAttribute                          | 左边第二个按钮通用属性，颜色大小等 |
| rightMenuAttribute    | BarMenuAttribute                          | 右边第一个按钮通用属性，颜色大小等 |
| rightMenu2Attribute   | BarMenuAttribute                          | 右边第二个按钮通用属性，颜色大小等 |

## 二、基本使用

### 1、简单使用，就是一个普通的组件

```typescript
ActionBar({
  title: "普通单标题"
})
```

### 2、左侧文字按钮展示

```typescript
ActionBar({
  title: "左侧文字按钮",
  leftText: "返回",
  onLeftClick: () => {
    console.log("====点击了左侧按钮")
  },
})
```

### 3、左侧图片按钮

```typescript
ActionBar({
  title: "左侧图片按钮",
  leftIcon: $r("app.media.app_icon"),
  onLeftClick: () => {
    console.log("====点击了左侧按钮")
  },
})
```

### 4、右侧文字按钮

```typescript
ActionBar({
  title: "右侧文字按钮", rightText: "编辑",
  onRightClick: () => {
    console.log("====点击了右侧按钮")
  }
})
```

### 5、右侧图片按钮

```typescript
ActionBar({
  title: "右侧图片按钮",
  rightIcon: $r("app.media.app_icon"),
  onRightClick: () => {
    console.log("====点击了右侧按钮")
  }
})
```

### 6、左右文字按钮

```typescript
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
})
```

### 7、左右图片按钮

```typescript
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
})
```

### 8、左侧文字双按钮

```typescript
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
})
```

### 9、左侧图片双按钮

```typescript
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
})
```

### 10、右侧文字双按钮

```typescript
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
})
```

### 11、右侧图片双按钮

```typescript
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
})
```

### 12、左右文字双按钮

```typescript
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
})
```

### 13、左侧图文

```typescript
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
})
```

### 14、左侧文图

```typescript
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
})
```

### 15、右侧图文

```typescript
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
})
```

### 16、右侧文图

```typescript
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
})
```

### 17、自定义标题

```typescript
ActionBar({
  titleLayout: this.titleLayout
})
```

### 18、左侧按钮自己定义

```typescript
ActionBar({
  title: "左侧按钮自己定义",
  leftMenuLayout: this.leftMenuLayout
})
```

### 19、右侧按钮自己定义

```typescript
ActionBar({
  title: "右侧按钮自己定义",
  rightMenuLayout: this.rightMenuLayout
})
```

## 三、咨询作者

如果您在使用上有问题，解决不了，或者查看精华的鸿蒙技术文章，可扫码进行操作。

<p><img src="https://vipandroid-image.oss-cn-beijing.aliyuncs.com/harmony/abner.jpg" width="150"></p>

## License

```
Copyright (C) AbnerMing, HarmonyOsBar Open Source Project

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```