FROM python
RUN pip install speedtest-cli
ENV TZ=Europe/London
ENTRYPOINT date +"%x %X"; speedtest-cli --server 15553 --simple; echo
