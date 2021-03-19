report-builder
---

## Prerequirement
+ Docker

## Usage

```sh
docker build -t report-pandoc .
docker run --rm --volume "$(pwd):/data" report-pandoc:latest source.md
```

