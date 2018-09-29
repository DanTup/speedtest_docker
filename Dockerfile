FROM arm32v7/python:3-slim-stretch
RUN pip install speedtest-cli
ENV TZ=Europe/London
ENV SERVER=15553
ENTRYPOINT date +"%x %X" | tr -d '\n'; speedtest-cli --server $SERVER --simple | tr -s '\n[:alpha:][:space:]/:' ' '; echo
