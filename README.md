# docker-appformix-installer

AppFormix installer running on Ubuntu 16.04 LTS

### Configurations

file: public_keys
- include additional public_keys for passwordless ssh access

file: ssh-config

### Install

```sh
docker pull kimcharli/appformix-installer:latest
```


### Running
```sh
docker run --name appformix-installer -d -p 0.0.0.0:2222:22 kimcharli/appformix-installer:latest
```


### Credentials

The default credential for `root` is `contrail123` inherited.

