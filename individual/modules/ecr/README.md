# ECR モジュール

## 概要

このモジュールは、Spring Batch アプリケーション用の Amazon ECR (Elastic Container Registry) リポジトリを管理します。

## 前提条件

`spring-batch-app-v1` リポジトリをクローンして利用します。

### リポジトリのクローン方法

GitHub CLI (`gh`) を使用してクローンします:

```bash
gh repo clone sukunahikona/spring-batch-app-v1
```

または、HTTPS でクローンする場合:

```bash
git clone https://github.com/sukunahikona/spring-batch-app-v1.git
```

## 使用方法

1. `spring-batch-app-v1` リポジトリをクローン
2. アプリケーションをビルドして Docker イメージを作成
3. このモジュールで作成した ECR リポジトリにプッシュ

```bash
# ECR にログイン
aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin <account-id>.dkr.ecr.ap-northeast-1.amazonaws.com

# イメージをタグ付け
docker tag spring-batch-app-v1:latest <account-id>.dkr.ecr.ap-northeast-1.amazonaws.com/spring-batch-app-v1:latest

# イメージをプッシュ
docker push <account-id>.dkr.ecr.ap-northeast-1.amazonaws.com/spring-batch-app-v1:latest
```
