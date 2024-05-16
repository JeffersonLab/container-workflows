# container-workflows [![Docker](https://img.shields.io/docker/v/jeffersonlab/container-workflows?sort=semver&label=DockerHub)](https://hub.docker.com/r/jeffersonlab/container-workflows)
GitHub Action container workflows

## Reusable workflows

| Name                 | Description                      |
|----------------------|----------------------------------|
| [docker-description.yaml](https://github.com/JeffersonLab/container-workflows/blob/main/.github/workflows/docker-description.yaml) | Keep DockerHub README in-sync with GitHub |
| [docker-publish.yaml](https://github.com/JeffersonLab/container-workflows/blob/main/.github/workflows/docker-publish.yaml) | Publish Container image to DockerHub |
| [gh-release.yaml](https://github.com/JeffersonLab/container-workflows/blob/main/.github/workflows/gh-release.yaml) | Create a GitHub Release |

## How to use
This project uses it's own workflows in order to test them (the Dockerfile is just a demo/example).  Copy and paste one or more of the following files into your project `.github/workflows` directory and update parameters accordingly:

| Name                 | Description                      |
|----------------------|----------------------------------|
| [cd.yaml](https://github.com/JeffersonLab/container-workflows/blob/main/.github/workflows/cd.yaml) | Continuous Deployment of a Docker image with GitHub release |
| [dd.yaml](https://github.com/JeffersonLab/container-workflows/blob/main/.github/workflows/dd.yaml) | DockerHub Description sync |

Both workflows require the DOCKER_USERNAME and DOCKER_TOKEN secrets be defined in the calling project repo on GitHub.  The JLab organization license doesn't support org-level secrets at the moment.  The gh-release workflow is triggered by bumping the VERSION file.  

## Version Notes
### v1
- The docker-publish workflow assumes there is a demo compose version specified in the file `compose.override.yaml`, so this file must exist in the caller repo.  The version is automatically bumped on release
- yaml files end with `.yml`
- Default build-arg of CUSTOM_CRT_URL=http://pki.jlab.org/JLabCA.crt 

 ### v2      
 - compose.override.yaml is not required, and you should use latest tag inside if you do use it.
 - yaml files end with `.yaml`
 - No default build-args are provided - you should embed defaults inside your Dockerfile

## Workflow Updates
Workflows are versioned in semver just as with regular software, however, the GitHub Action workflows convention is to reference a major version number such that backwards compatible minor and patch updates are received automatically.  This means a separate major tag such as `v1` must be moved after each release.  To move a major tag after a release execute (`v1` shown):

```
git tag -f v1
git push --tags -f
```

## See Also
- [Other workflows](https://github.com/search?q=org%3Ajeffersonlab+topic%3Agh-action-workflow&type=repositories)
- [Projects using this](https://github.com/search?q=org%3Ajeffersonlab+topic%3Acontainer-workflows&type=repositories)
