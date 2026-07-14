JSONPlaceholder API Tests
API Tests · Workflow runs · huabao-bao/jsonplaceholder-api-tests · GitHub

使用 Newman 对 JSONPlaceholder - Free Fake REST API 运行自动化 API 测试。

覆盖范围
方法	端点	断言数
GET	/posts	5
GET	/posts/1	5
POST	/posts	4
PUT	/posts/1	3
DELETE	/posts/1	1
2 轮数据驱动迭代，总计 10 请求 / 36 断言

本地运行
bash npm install -g newman newman-reporter-htmlextra newman run JSONPlaceholder-Tests.postman_collection.json
-e jsonplaceholder-env.postman_environment.json
-d test-data.csv
-r cli,htmlextra

技术栈
Newman — Postman Collection 命令行运行器
JSONPlaceholder — 公开 REST API 测试目标
GitHub Actions — CI 自动化
