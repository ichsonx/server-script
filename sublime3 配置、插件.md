# 插件篇

1. package control：安装方法https://packagecontrol.io/installation ，Sublime Text 3 可以在 Tools 菜单下直接安装

2. ChineseLocalization：各国语言包，小日本的都有哦

3. JavaScript Completions：js最基本的api快查片段

4. #### ConvertToUTF8 插件可以是使一些在 Sublime Text 3 中打开乱码的文件正常显示。

5. #### filediffs：FileDiffs插件可以让开发者比较两个不同文件的差异，比较的对象包括当前文件、另一文件、剪切板中的代码甚至未保存文件等

6. #### Predawn：样式主题

7. #### A File Icon：同上


# 设置篇

1. 开启vim模式，setting里面

- 清空【】里的内容：

  > "ignored_packages":
  > 　[
  > 　]

2. 开启ctrl翻页等功能

   > setting里加入以下代码：
   >
   > "vintage_ctrl_keys": true
   >
   > `这样就支持以下命令了：`　　
   >
   > - Ctrl+[ : Esc键的别名
   > - Ctrl+R : Redo
   > - Ctrl+Y : 向下滚动一行
   > - Ctrl+E : 向上滚动一行
   > - Ctrl+F : 下一页
   > - Ctrl+B : 上一页