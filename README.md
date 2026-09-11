# .dumpenv

Tiny Docker image that prints all environment variables prettily to the console on startup. (It's as trivial as it sounds.)

## Usage

```bash
docker run --rm ghcr.io/withzu/dumpenv:latest
docker run --rm -e FOO=bar ghcr.io/withzu/dumpenv:latest
```

## Build locally

```bash
docker build -t dumpenv .
docker run --rm -e HELLO=world dumpenv
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.