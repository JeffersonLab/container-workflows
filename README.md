# container-workflows [![Docker](https://img.shields.io/docker/v/jeffersonlab/container-workflows?sort=semver&label=DockerHub)](https://hub.docker.com/r/jeffersonlab/container-workflows)
GitHub Action container workflows

## Reusable workflows

| Name                 | Description                      |
|----------------------|----------------------------------|
| [docker-description.yml](https://github.com/JeffersonLab/container-workflows/blob/main/.github/workflows/docker-description.yml) | Keep DockerHub README in-sync with GitHub |
| [docker-publish.yml](https://github.com/JeffersonLab/container-workflows/blob/main/.github/workflows/docker-publish.yml) | Publish Container image to DockerHub |
| [gh-release.yml](https://github.com/JeffersonLab/container-workflows/blob/main/.github/workflows/gh-release.yml) | Create a GitHub Release |

## How to use
This project uses it's own workflows in order to test them (the Dockerfile is just a demo/example).  Copy and paste one or more of the following files into your project `.github/workflows` directory and update parameters accordingly:

| Name                 | Description                      |
|----------------------|----------------------------------|
| [cd.yml](https://github.com/JeffersonLab/container-workflows/blob/main/.github/workflows/cd.yml) | Continuous Deployment of a Docker image with GitHub release |
| [dd.yml](https://github.com/JeffersonLab/container-workflows/blob/main/.github/workflows/dd.yml) | DockerHub Description sync |

Both workflows require the DOCKER_USERNAME and DOCKER_TOKEN secrets be defined in the calling project repo on GitHub.  The JLab organization license doesn't support org-level secrets at the moment.  The gh-release workflow is triggered by bumping the VERSION file.  The docker-publish workflow assumes there is a demo compose version specified in the file `compose.override.yaml`, so this file must exist in the caller repo.

# See Also
- [Projects using this](https://github.com/search?q=org%3Ajeffersonlab+topic%3Acontainer-workflows&type=repositories)
