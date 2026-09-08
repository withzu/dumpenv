# dumpenv

Extrem leichtgewichtiges Docker-Image, das beim Start einfach alle gesetzten
Umgebungsvariablen auf die Konsole ausgibt. Nützlich zum schnellen
Debuggen, ob Env-Variablen (z. B. aus Kubernetes, docker-compose oder
CI/CD-Secrets) korrekt im Container ankommen.

Basiert auf `busybox:stable-musl` (~1-2 MB) und führt einfach `env` aus.

## Verwendung

```bash
docker run --rm ghcr.io/<owner>/dumpenv:latest
```

Mit eigenen Variablen:

```bash
docker run --rm -e FOO=bar -e BAZ=qux ghcr.io/<owner>/dumpenv:latest
```

## Lokal bauen

```bash
docker build -t dumpenv .
docker run --rm -e HELLO=world dumpenv
```

## Versionierung & Release

Der GitHub-Actions-Workflow unter
[`.github/workflows/docker-build.yml`](.github/workflows/docker-build.yml)
baut bei jedem Push auf `main` automatisch ein neues Image und vergibt dabei
einen semantischen Versions-Tag (`0.0.1`, `0.0.2`, …), der bei jedem Build
automatisch um den Patch-Level erhöht wird. Zusätzlich wird immer der
`latest`-Tag aktualisiert. Die Images werden in die GitHub Container
Registry (GHCR) gepusht:

```
ghcr.io/<owner>/<repo>:<version>
ghcr.io/<owner>/<repo>:latest
```

Ein manueller Lauf ist auch über den "Run workflow"-Button (workflow_dispatch)
möglich.
