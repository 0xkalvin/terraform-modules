[
   {
      "name": "${name}",
      "image": "${ecr_repo_url}",
      "cpu": ${cpu},
      "memory": ${memory},
      "environment": [${environment}],
      "secrets": [${secrets}],
      "essential": true,
      "portMappings": [${portMappings}],
      "logConfiguration": {
         "logDriver": "awslogs",
         "options": {
            "awslogs-group": "/fargate-container/${name}",
            "awslogs-region": "${aws_region}",
            "awslogs-stream-prefix": "fargate-container"
         }
      }
   }
]