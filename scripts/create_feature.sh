#!/bin/bash

FEATURE_NAME=$1

if [ -z "$FEATURE_NAME" ]; then
  echo "❌ Error: feature name is required"
  echo "👉 Usage: ./create_feature.sh <feature_name>"
  exit 1
fi

BASE_PATH="lib/features/$FEATURE_NAME"

if [ -d "$BASE_PATH" ]; then
  echo "❌ Error: feature '$FEATURE_NAME' already exists"
  exit 1
fi

echo "🚀 Creating feature: $FEATURE_NAME"

mkdir -p \
  $BASE_PATH/cubit \
  $BASE_PATH/data/datasources \
  $BASE_PATH/data/models \
  $BASE_PATH/domain/entities \
  $BASE_PATH/domain/repositories \
  $BASE_PATH/presentation/pages \
  $BASE_PATH/presentation/widgets

touch \
  $BASE_PATH/cubit/.gitkeep \
  $BASE_PATH/data/datasources/.gitkeep \
  $BASE_PATH/data/models/.gitkeep \
  $BASE_PATH/domain/entities/.gitkeep \
  $BASE_PATH/domain/repositories/.gitkeep \
  $BASE_PATH/presentation/pages/.gitkeep \
  $BASE_PATH/presentation/widgets/.gitkeep

echo "✅ Feature '$FEATURE_NAME' created successfully"
