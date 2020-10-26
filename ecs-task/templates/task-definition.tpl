[
   {
      "name": "${name}",
      "image": "${ecr_repo_url}",
      "cpu": ${cpu},
      "memory": ${memory},
      "environment": [${environment}],
      "secrets": [${secrets}],
      "essential": true,
      "portMappings": [${portMappings}]
   }
]