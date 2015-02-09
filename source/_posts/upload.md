title: 快速创建自己的博客
date: 2015-01-17 16:02:42
tags: 实践

---

虽然自己已经在网络上留下了大量的“痕迹”，但大部分都是无心的。通过博客我要“别有用心的”留下点什么。吐槽完毕进入主题。

今天我们要用 hexo 框架在 github 上快速搭建自己的博客。

##使用 github pages
###新建一个仓库
项目名我叫它 boboke ，证书选择了 `cc0 1.0 Universal` ，推荐一个有关版权的电影[《互联网之子》](http://movie.douban.com/subject/25785114/?from=subject-page)。

###生成 github pages 分支
进入项目的设置页找到 GitHub Pages 框，点击 `Automatic page generator` 进入设置页面，因为我们之后要用 hexo 的生成的文件替换它原本的静态页，所以直接点击 `continue to layouts` 之后随便选一个主题生成 pages，登陆 http://sinelabo.github.io/boboke 就进入了我还没有用 hexo 换过的博客。

github pages 还有很多功能，例如可以创建一个url的路径里没有项目名的专属用户站点，像 http://sinelabo.github.io/ 。再比如绑定站点到自己申请的域名。具体看[帮助文档](https://help.github.com/categories/github-pages-basics/)。

##安装并生成 hexo


###安装
因为我用的 Ubuntu 所以安装很简单，只需要一条命令。

```
sudo npm install -g hexo
```

###生成
- 新建博文
```
hexo new "Hello Hexo"
```
- 生成静态站点
```
hexo generate
```
- 在浏览器预览本地生成站点
```
hexo server
 ```

hexo 的具体使用方法看[项目介绍](https://github.com/hexojs/hexo)。

##修改 hexo 配置文件
项目里的 _config.yml 就是配置文件。

修改 `title` 、`author` 、`language` 、`url` 、`root` ，详细的配置说明看[文档](http://hexo.io/docs/configuration.html)。

在最后为了发布到 github 上需要修改 `deploy`，详细看[文档](http://hexo.io/docs/deployment.html)。


##发布
修改好配置后，在本地生成预览一次，如果没问题就发布

```
hexo deploy
```

登陆项目地址发现和在本地预览的一样。到这里自己的博客已经算是建成了，但是因为主题不好看，所以我再换一个好看的主题。
##更换主题
通过官网提供的主题找了好久，终于发现了一个适合中文的，看起来高达的，另外看了博主的简历，也立即跪倒在博主脚下，发誓向博主学习。那位博主的主题[项目在此](https://github.com/XadillaX/hexadillax)。

修改方法及 demo 的[地址](https://github.com/hexojs/hexo/wiki/Themes)。

##结语
hexo 的玩法还有很多，希望这篇文章能带大家走进 DIY 自己博客的大门。

最后，留下我的[BoBoKe](https://github.com/SineLabo/boboke)供大家调戏。