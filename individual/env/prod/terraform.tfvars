project     = "amateras"
environment = "prod"
region      = "ap-northeast-1"
github_org  = "sukunahikona"
github_repo = "spring-batch-app-v1"

# ECS Spring Batch クラスタ設定
batch_cluster = {
  task_cpu    = 512
  task_memory = 1024
}
