# HarmonyOsBar
<p align="center">
<img src="https://vipandroid-image.oss-cn-beijing.aliyuncs.com/harmony/abner.jpg" width="100px" /><br/>
<span style="font-size:12px;color:red;">扫码关注，千帆起航，共筑鸿蒙！</span>
</p>

**bar**，是一个标题栏组件，支持左右按钮，支持自定义组件，支持全局初始化，仅当做一个纯组件使用。

## Api支持版本

Api版本：>=12

## 效果

<p align="center">
<img src="https://loveharmony.oss-cn-beijing.aliyuncs.com/weight/bar/bar.png"  width="300px"/>
</p>

## 快速使用

方式一：在需要Module中的oh-package.json5中设置三方包依赖，配置示例如下：

```
"dependencies": { "@abner/bar": "^1.0.5"}
```

方式二：在Terminal窗口中，执行如下命令安装三方包，DevEco Studio会自动在工程的oh-package.json5中自动添加三方包依赖。

**建议：在使用的模块路径下进行执行命令。**

```
ohpm install @abner/bar
```

## 一、初始化(非必须，可以不设置)

初始化的作用，用于统一标题栏，比如宽高、字体颜色大小，统一点击事件等等,建议在AbilityStage中进行，属性
选择性调用，如果不需要，可以不设置。

需要注意：如果局部重新设置了属性，那么则以局部为先。

```typescript
initTitleBar({
  onBarAttribute: (attr) => {
    //设置整个标题栏属性，比如宽高，背景，左右按钮显示规则
    attr.barHeight = 44 //设置标题栏高度
  },
  onTitleAttribute: (attr) => {
    //设置标题栏标题相关
    attr.fontColor = Color.Black //统一标题栏颜色
    attr.fontSize = 14 //统一标题栏大小
  },
  onLeftMenuAttribute: (attr) => {
    //设置左侧第一个按钮属性
  },
  onLeft2MenuAttribute: (attr) => {
    //设置左侧第二个按钮属性
  },
  onLeft3MenuAttribute: (attr) => {
    //设置左侧第三个按钮属性
  },
  onRightMenuAttribute: (attr) => {
    //设置右侧第一个按钮属性
  },
  onRight2MenuAttribute: (attr) => {
    //设置右侧第二个按钮属性
  }
})
```

相关属性一览：

| 属性                    | 类型                                        | 概述               |
|-----------------------|-------------------------------------------|------------------|
| onBarAttribute        | (barAttribute: TitleBarAttribute) => void | 标题栏整体属性，包含宽高，背景等 |
| onTitleAttribute      | (titleAttribute: BTitleAttribute) => void | 标题栏标题属性          |
| onLeftMenuAttribute   | (lMenuAttribute: BMenuAttribute) => void  | 左侧第一个按钮属性        |
| onLeft2MenuAttribute  | (lMenu2Attribute: BMenuAttribute) => void | 左侧第二个按钮属性        |
| onLeft3MenuAttribute  | (lMenu3Attribute: BMenuAttribute) => void | 左侧第三个按钮属性        |
| onRightMenuAttribute  | (rMenuAttribute: BMenuAttribute) => void  | 右侧第一个按钮属性        |
| onRight2MenuAttribute | (rMenu2Attribute: BMenuAttribute) => void | 右侧第二个按钮属性        |

TitleBarAttribute可设置属性如下：

| 属性                    | 类型                                        | 概述                                 |
|-----------------------|-------------------------------------------|------------------------------------|
| barWidth              | Length                                    | 标题栏宽度                              |
| barHeight             | Length                                    | 标题栏高度                              |
| barBackgroundColor    | ResourceColor                             | 标题栏背景颜色                            |
| leftMenuType          | BarMenuType                               | 左边按钮类型,默认：BarMenuType.DEFAULT，文字按钮 |
| rightMenuType         | BarMenuType                               | 右边按钮类型,默认：BarMenuType.DEFAULT，文字按钮 |
| leftMenuMargin        | Length                                    | 左边按钮距离左边，默认20                      |
| leftMenuBgColor       | ResourceColor                             | 左边按钮背景颜色                           |
| rightMenuMargin       | Length                                    | 右边按钮距离右边，默认20                      |
| rightMenuBgColor      | ResourceColor                             | 右边按钮背景颜色                           |
| leftMenuWidth         | Length                                    | 左边按钮整体宽度                           |
| leftMenuHeight        | Length                                    | 左边按钮整体高度                           |
| rightMenuWidth        | Length                                    | 右边按钮整体宽度                           |
| rightMenuHeight       | Length                                    | 右边按钮整体高度                           |
| onLeftClick           | 回调                                        | 左边整体的点击                            |
| onRightClick          | 回调                                        | 右边整体的点击                            |
| isAvoidanceNavigation | boolean                                   | 是否避让导航，默认不避让                       |
| hideLeftMenu          | boolean                                   | 隐藏左边第一个按钮，默认不隐藏                    |
| hideLeft2Menu         | boolean                                   | 隐藏左边第二个按钮，默认不隐藏                    |
| hideTitle             | boolean                                   | 隐藏标题，默认不隐藏                         |
| hideRightMenu         | boolean                                   | 隐藏右边按钮，默认不隐藏                       |
| leftText              | string/Resource                           | 左边按钮文字                             |
| left2Text             | string/Resource                           | 左边第二个按钮文字                          |
| rightText             | string/Resource                           | 右边按钮文字                             |
| right2Text            | string/Resource                           | 右边第二个按钮文字                          |
| leftIcon              | PixelMap/ ResourceStr/ DrawableDescriptor | 左边按钮第一个图标                          |
| left2Icon             | PixelMap/ ResourceStr/ DrawableDescriptor | 左边按钮第二个图标                          |
| rightIcon             | PixelMap/ ResourceStr/ DrawableDescriptor | 右边按钮第一个图标                          |
| right2Icon            | PixelMap/ ResourceStr/ DrawableDescriptor | 右边按钮第二个图标                          |

BTitleAttribute可设置属性如下：

| 属性              | 类型                               | 概述                           |
|-----------------|----------------------------------|------------------------------|
| fontSize        | number/string/Resource           | 文字大小，默认16                    |
| fontWeight      | number/FontWeight/string         | 文字字重，默认FontWeight.Bold       |
| fontFamily      | string/Resource                  | 文字字体                         |
| fontColor       | ResourceColor                    | 文字颜色                         |
| fontStyle       | FontStyle                        | 文字样式                         |
| textAlign       | TextAlign                        | 文字居中方式，默认居中，TextAlign.Center |
| maxLines        | number                           | 最大行                          |
| overflow        | TextOverflow                     | 设置文本超长时的显示方式。                |
| margin          | Margin / Length/ LocalizedMargin | 文字边距                         |
| onTitleClick    | () => void                       | 标题栏点击事件                      |
| titleAlignRules | AlignRuleOption                  | 位置设置                         |

BMenuAttribute可设置属性如下：

| 属性          | 类型                             | 概述         |
|-------------|--------------------------------|------------|
| fontSize    | number/string/Resource         | 文字大小       |
| fontWeight  | number/FontWeight/string       | 文字字重       |
| fontFamily  | string/Resource                | 文字字体       |
| fontColor   | ResourceColor                  | 文字颜色       |
| fontStyle   | FontStyle                      | 文字样式       |
| textWidth   | Length                         | 文字按钮时的宽度   |
| textHeight  | Length                         | 文字按钮时的高度   |
| imageWidth  | Length                         | 图片按钮时的宽度   |
| imageWidth  | Length                         | 图片按钮时的高度   |
| objectFit   | ImageFit                       | 图片在容器内显示效果 |
| border      | BorderOptions                  | 边框样式       |
| textMargin  | Margin/Length/ LocalizedMargin | 文字按钮时边距    |
| imageMargin | Margin/Length/ LocalizedMargin | 图片按钮时边距    |
| onClick     | () => void                     | 按钮的点击事件    |

## 二、基本使用

### 1、简单使用，就是一个普通的组件

```typescript
TitleBar({
  title: "左侧文字单按钮",
})
```

### 2、左侧文字按钮展示

```typescript
TitleBar({
  title: "左侧文字单按钮",
  leftText: "返回",
  barBackgroundColor: Color.White,
  onLeftClick: () => {
    console.log("===左侧按钮点击")
  }
})
```

### 3、左侧图片按钮

```typescript
TitleBar({
  title: "左侧图片单按钮",
  leftIcon: $r("app.media.common_back"),
  leftMenuType: BarMenuType.IMAGE,
  barBackgroundColor: Color.White,
  onLeftClick: () => {
    console.log("===左侧按钮点击")
  }
})
```

### 4、左侧双文字按钮

```typescript
TitleBar({
  title: "左侧双文字按钮",
  leftMenuType: BarMenuType.TEXT_TEXT, //双文字
  leftText: "按钮1",
  left2Text: "按钮2",
  barBackgroundColor: Color.White,
  onLeftMenuAttribute: (attr) => {
    attr.onClick = () => {
      console.log("===按钮1点击")
    }
  },
  onLeft2MenuAttribute: (attr) => {
    attr.textMargin = { left: 10 }
    attr.onClick = () => {
      console.log("===按钮2点击")
    }
  }
})
```

### 5、左侧双图片按钮

```typescript
TitleBar({
  title: "左侧双图片按钮",
  leftMenuType: BarMenuType.IMAGE_IMAGE, //双图片
  leftIcon: $r("app.media.common_back"),
  left2Icon: $r("app.media.delete"),
  barBackgroundColor: Color.White,
  onLeftMenuAttribute: (attr) => {
    attr.onClick = () => {
      console.log("===按钮1点击")
    }
  },
  onLeft2MenuAttribute: (attr) => {
    attr.imageMargin = { left: 10 }
    attr.onClick = () => {
      console.log("===按钮2点击")
    }
  }
})
```

### 6、左侧文+图按钮

```typescript
TitleBar({
  title: "左侧文+图按钮",
  leftMenuType: BarMenuType.TEXT_IMAGE, //文字+图片
  leftText: "返回",
  left2Icon: $r("app.media.common_back"),
  barBackgroundColor: Color.White,
  onLeftMenuAttribute: (attr) => {
    attr.onClick = () => {
      console.log("===按钮1点击")
    }
  },
  onLeft2MenuAttribute: (attr) => {
    attr.imageMargin = { left: 10 }
    attr.onClick = () => {
      console.log("===按钮2点击")
    }
  }
})
```

### 7、左侧图+文按钮

```typescript
TitleBar({
  title: "左侧图+文按钮",
  leftMenuType: BarMenuType.IMAGE_TEXT, //图片+文字
  leftIcon: $r("app.media.common_back"),
  left2Text: "返回",
  barBackgroundColor: Color.White,
  onLeftMenuAttribute: (attr) => {
    attr.onClick = () => {
      console.log("===按钮1点击")
    }
  },
  onLeft2MenuAttribute: (attr) => {
    attr.textMargin = { left: 10 }
    attr.onClick = () => {
      console.log("===按钮2点击")
    }
  }
})
```

### 8、左侧图+文+文按钮

```typescript
TitleBar({
  title: "左侧图+文+文按钮",
  leftMenuType: BarMenuType.IMAGE_TEXT_TEXT_UP, //图片+文字+文字
  leftIcon: $r("app.media.common_back"),
  leftText: "一级标题",
  left2Text: "二级标题",
  barBackgroundColor: Color.White,
  onLeftMenuAttribute: (attr) => {
    attr.onClick = () => {
      console.log("===按钮1点击")
    }
  },
  onLeft2MenuAttribute: (attr) => {
    attr.textMargin = { left: 10 }
    attr.onClick = () => {
      console.log("===按钮2点击")
    }
  },
  onLeft3MenuAttribute: (attr) => {
    attr.textMargin = { left: 10 }
    attr.onClick = () => {
      console.log("===按钮3点击")
    }
  }
})
```

### 9、右侧单文字按钮

```typescript
TitleBar({
  title: "右侧单文字按钮",
  rightText: "编辑",
  barBackgroundColor: Color.White,
  onRightClick: () => {
    console.log("===右侧按钮点击")
  }
})
```

### 10、右侧单图片按钮

```typescript
TitleBar({
  title: "右侧单图片按钮",
  rightIcon: $r("app.media.share"),
  rightMenuType: BarMenuType.IMAGE,
  barBackgroundColor: Color.White,
  onRightClick: () => {
    console.log("===右侧按钮点击")
  }
})
```

### 11、右侧双文字按钮

```typescript
TitleBar({
  title: "右侧双文字按钮",
  rightMenuType: BarMenuType.TEXT_TEXT, //双文字
  rightText: "按钮1",
  right2Text: "按钮2",
  barBackgroundColor: Color.White,
  onRightMenuAttribute: (attr) => {
    attr.textMargin = { right: 10 }
    attr.onClick = () => {
      console.log("===按钮1点击")
    }
  },
  onRight2MenuAttribute: (attr) => {
    attr.onClick = () => {
      console.log("===按钮2点击")
    }
  }
})
```

### 12、右侧双图片按钮

```typescript
TitleBar({
  title: "右侧双图片按钮",
  rightMenuType: BarMenuType.IMAGE_IMAGE, //双图片
  rightIcon: $r("app.media.share"),
  right2Icon: $r("app.media.remove"),
  barBackgroundColor: Color.White,
  onRightMenuAttribute: (attr) => {
    attr.imageMargin = { right: 10 }
    attr.onClick = () => {
      console.log("===按钮1点击")
    }
  },
  onRight2MenuAttribute: (attr) => {
    attr.onClick = () => {
      console.log("===按钮2点击")
    }
  }
})
```

### 13、右侧文+图按钮

```typescript
TitleBar({
  title: "右侧文+图按钮",
  rightMenuType: BarMenuType.TEXT_IMAGE, //文+图
  rightText: "编辑",
  right2Icon: $r("app.media.share"),
  barBackgroundColor: Color.White,
  onRightMenuAttribute: (attr) => {
    attr.textMargin = { right: 10 }
    attr.onClick = () => {
      console.log("===按钮1点击")
    }
  },
  onRight2MenuAttribute: (attr) => {
    attr.onClick = () => {
      console.log("===按钮2点击")
    }
  }
})
```

### 14、右侧图+文按钮

```typescript
TitleBar({
  title: "右侧图+文按钮",
  rightMenuType: BarMenuType.IMAGE_TEXT, //图+文
  rightIcon: $r("app.media.share"),
  right2Text: "编辑",
  barBackgroundColor: Color.White,
  onRightMenuAttribute: (attr) => {
    attr.imageMargin = { right: 10 }
    attr.onClick = () => {
      console.log("===按钮1点击")
    }
  },
  onRight2MenuAttribute: (attr) => {
    attr.onClick = () => {
      console.log("===按钮2点击")
    }
  }
})
```

### 15、左右单文字按钮

```typescript
TitleBar({
  title: "左右单文字按钮",
  leftText: "返回",
  rightText: "编辑",
  barBackgroundColor: Color.White,
  onLeftClick: () => {
    console.log("===左侧按钮点击")
  },
  onRightClick: () => {
    console.log("===右侧按钮点击")
  }
})
```

### 16、左右单图片按钮

```typescript
TitleBar({
  title: "左右单图片按钮",
  leftIcon: $r("app.media.common_back"),
  rightIcon: $r("app.media.share"),
  leftMenuType: BarMenuType.IMAGE,
  rightMenuType: BarMenuType.IMAGE,
  barBackgroundColor: Color.White,
  onLeftClick: () => {
    console.log("===左侧按钮点击")
  },
  onRightClick: () => {
    console.log("===右侧按钮点击")
  }
})
```

### 17、左右双文字按钮

```typescript
TitleBar({
  title: "左右双文字按钮",
  leftText: "按钮1",
  left2Text: "按钮2",
  rightText: "按钮1",
  right2Text: "按钮2",
  leftMenuType: BarMenuType.TEXT_TEXT,
  rightMenuType: BarMenuType.TEXT_TEXT,
  barBackgroundColor: Color.White,
  onLeftMenuAttribute: (attr) => {
    attr.textMargin = { right: 10 }
    attr.onClick = () => {
      console.log("===左侧按钮1点击")
    }
  },
  onLeft2MenuAttribute: (attr) => {
    attr.onClick = () => {
      console.log("===左侧按钮2点击")
    }
  },
  onRightMenuAttribute: (attr) => {
    attr.textMargin = { right: 10 }
    attr.onClick = () => {
      console.log("===右侧按钮1点击")
    }
  },
  onRight2MenuAttribute: (attr) => {
    attr.onClick = () => {
      console.log("===右侧按钮2点击")
    }
  }
})
```

### 18、左右双图片按钮

```typescript
TitleBar({
  title: "左右双图片按钮",
  leftMenuType: BarMenuType.IMAGE_IMAGE, //双图片
  leftIcon: $r("app.media.common_back"),
  left2Icon: $r("app.media.delete"),
  rightMenuType: BarMenuType.IMAGE_IMAGE, //双图片
  rightIcon: $r("app.media.share"),
  right2Icon: $r("app.media.remove"),
  barBackgroundColor: Color.White,
  onLeftMenuAttribute: (attr) => {
    attr.imageMargin = { right: 10 }
    attr.onClick = () => {
      console.log("===左侧按钮1点击")
    }
  },
  onLeft2MenuAttribute: (attr) => {
    attr.onClick = () => {
      console.log("===左侧按钮2点击")
    }
  },
  onRightMenuAttribute: (attr) => {
    attr.imageMargin = { right: 10 }
    attr.onClick = () => {
      console.log("===右侧按钮1点击")
    }
  },
  onRight2MenuAttribute: (attr) => {
    attr.onClick = () => {
      console.log("===右侧按钮2点击")
    }
  }
})
```

### 19、自定义组件

可以自定义标题，左右按钮

```typescript
TitleBar({
  titleLayout: () => {
    this.titleLayout()
  },
  barBackgroundColor: Color.White
})
```

| 属性              | 类型         | 概述    |
|-----------------|------------|-------|
| titleLayout     | () => void | 自定义标题 |
| leftMenuLayout  | () => void | 自定义左边 |
| rightMenuLayout | () => void | 自定义右边 |


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
