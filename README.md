# Rosary

Image for cross building and debugging bare metal projects

# Usage

## Download the image

```bash
# You can choose a version (e.g. 0.2.0) instead of `latest`
docker pull docker.pkg.github.com/sautoirs/rosary/rosary:latest
# Create a shorted tag for the downloaded image
docker tag docker.pkg.github.com/sautoirs/rosary/rosary:latest rosary
```

## Run a single command

```bash
docker run --rm -v $(pwd):/workdir rosary <your build command>
```

## Open a shell

```bash
docker run -it --rm -v $(pwd):/workdir rosary bash
```

