FROM python
RUN pip install speedtest-cli
ENV TZ=Europe/London
ENTRYPOINT date +"%x %X" | tr -d '\n'; speedtest-cli --server 15553 --simple | tr -s '\n[:alpha:][:space:]/:' ' '; echo
