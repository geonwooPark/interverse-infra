# 크론탭으로 매일 04시에 동작
BASE_DIR="/Users/geonwoo/Desktop/project/nginx/nginx"

docker run --rm \
  -v "$BASE_DIR/ssl:/etc/letsencrypt" \
  -v "$BASE_DIR/www:/var/www/certbot" \
  certbot/certbot renew --webroot -w /var/www/certbot

docker exec nginx nginx -s reload
