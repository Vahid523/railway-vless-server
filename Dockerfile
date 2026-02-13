FROM teddysun/xray:latest

WORKDIR /app
COPY bin /app/bin
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

CMD ["/app/start.sh"]
