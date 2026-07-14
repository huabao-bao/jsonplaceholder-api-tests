#!/bin/bash

#=====配置区域======
BASE_DIR="$HOME/projects/jsonplaceholder-tests"
COLLECTION="$BASE_DIR/JSONPlaceholder-Tests.postman_collection.json"
ENVIRONMENT="$BASE_DIR/jsonplaceholder-env.postman_environment.json"
DATA="$BASE_DIR/test-data.csv"
REPORT_DIR="$BASE_DIR/reports"

#创建目录报告
mkdir -p "$REPORT_DIR"

echo "===> 运行 JSONPlacerholder 测试..."
newman run "$COLLECTION" \
    -e "$ENVIRONMENT" \
    -d "$DATA" \
    -r cli,htmlextra \
    --reporter-htmlextra-export "$REPORT_DIR/report-$(date +%Y%m%d-%H%M%S).html"
    
EXIT_CODE=$?
echo "====> 完成(exit code: $EXIT_CODE)"
exit $EXIT_CODE