# Alist on heroku

点击这里开始👉 [![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## FAQ
- 问：通过 Herok 部署的 Alist 默认管理密码是什么？
- 答：v2.0.9以上版本“首次运行会输出初始密码”。Heroku查看右上角`More -> view logs -> Initial password: ********`     

- 问：如果让 Herok 应用保持存活状态？
- 答：

方法一：通过 UptimeRobot 对应用地址进行状态监控，UptimeRobot 会对地址每 5 分钟请求一次使其产生访问流量，Herok 应用将一直保持活跃状态。

方法二：使用 curl 命令配合定时任务每10分钟获取一次 Alist 文件目录列表同样可以达到应用不睡眠效果，环境可以是你家里的路由器或其他有curl 命令的 linux。

```bash
curl -d '{"path":"/","password":"","page_num":1,"page_size":30}' \
    -H "Content-Type: application/json" \
    -X POST https://应用名称.herokuapp.com/api/public/path
```


## 使用免费 MySQL 远程数据库（推荐）

由于 Herok 免费账户无法永久保存应用数据，在没有使用正确的方法防止应用休眠情况下，Alist 会被重置。使用远程 MySQL 则可以解决这个问题。

注册免费 MySQL 远程数据库：https://www.db4free.net/

完成注册后，你的邮箱会收到MySQL 连接地址、端口、数据库名称、用户信息。


## 演示

访问地址：https://cooluc.herokuapp.com

Cloudflare访问：https://example.cooluc.com

## 官方链接
[alist-org/alist-heroku](https://github.com/alist-org/alist-heroku)
[alist-org/alist-railway: alist on railway](https://github.com/alist-org/alist-railway#/)
