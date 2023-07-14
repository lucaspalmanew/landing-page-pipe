#!/bin/bash

project_name="landing-page"
source_version="main"

# Iniciar uma nova compilação
build_id=$(aws codebuild start-build \
  --project-name "$project_name" \
  --source-version "$source_version" \
  --output text --query 'build.id')

echo "Iniciada a compilação no projeto: $project_name"
echo "ID da compilação: $build_id"
