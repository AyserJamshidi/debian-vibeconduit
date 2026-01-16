# debian-vibeconduit

A basic Docker container for Unraid, built on Debian Slim with an automated watchdog service.

## Features

- **Base Image**: debian:stable-slim (latest stable Debian release)
- **Author**: ayserjamshidi
- **Automated Versioning**: GitHub Actions workflow for Docker builds
- **Watchdog Service**: Runs `/run/watchdog.sh` on container start

## Quick Start

### Pull from GitHub Container Registry

```bash
docker pull ghcr.io/ayserjamshidi/debian-vibeconduit:latest
```

### Run the container

```bash
docker run -d --name vibeconduit ghcr.io/ayserjamshidi/debian-vibeconduit:latest
```

### Build locally

```bash
docker build -t debian-vibeconduit .
docker run -d --name vibeconduit debian-vibeconduit
```

## Unraid Installation

1. Go to the Docker tab in Unraid
2. Add Container
3. Use the following settings:
   - Repository: `ghcr.io/ayserjamshidi/debian-vibeconduit:latest`
   - Name: `vibeconduit`

## Development

### Building the image

```bash
docker build -t debian-vibeconduit .
```

### Running with logs

```bash
docker run --rm debian-vibeconduit
```

## Versioning

The Docker image is automatically built and tagged using GitHub Actions:
- Push to `main`/`master` branch: `latest` tag
- Git tags `v*.*.*`: Semantic version tags (e.g., `v1.0.0`, `1.0`, `1`)

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.