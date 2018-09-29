# DanTup / speedtest

A simple Docker container to simplify running speed tests on Raspberry Pi (using speedtest_cli) without installing dependencies directly on your machine.

To run:

```
docker run dantup/speedtest
```

Output will be in the form `date time ping download upload`:

```
29/09/2018 21:53:04 31.23 69.54 18.43
```

The server and time format can be overriden with `-e`:

```
docker run -e SERVER=13098 -e TZ=America/New_York dantup/speedtest
```

Defaults are for `Europe/London` and a server in Liverpool, UK.

