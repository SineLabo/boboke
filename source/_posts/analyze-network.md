title: 用 cdn 给博客加速
date: 2015-01-18 13:11:47
tags: 实践

---

##分析博客网络情况
![网络情况](http://7u2m21.com1.z0.glb.clouddn.com/img/analyze_network/newtwork_info.png)
发现延迟等待时间长的资源：图片、脚本、文档、样式、字体
接收数据时间长的资源：字体、脚本、图片

##利用 cdn 加速
我把字体文件和大图片放到七牛上，jquery 脚本用 [360 前端公共库 CDN 服务](http://libs.useso.com/)
![加速效果](http://7u2m21.com1.z0.glb.clouddn.com/img/analyze_network/use_cdn_network.png)
##结语
由于 github 在国外，因而建立太多的连接会导致访问延迟，因此我们把大资源放到国内的 cdn 上，这样国内访问就会快一些，但是反过来，国外访问就会慢一些。
ddd
##参考
- [Chrome Developer Tools之网络监控与调优](http://www.kazaff.me/2014/01/15/chrome-developer-tools%E4%B9%8B%E7%BD%91%E7%BB%9C%E7%9B%91%E6%8E%A7%E4%B8%8E%E8%B0%83%E4%BC%98/)
