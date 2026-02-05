FROM nginx:alpine
# 방금 만든 index.html을 nginx 서버로 복사
COPY index.html /usr/share/nginx/html/index.html