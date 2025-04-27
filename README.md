# logdy-docker

This is the Git repo of the docker [logdy](https://logdy.dev/) image. 

This image was created as alternative for [this feature request](https://github.com/logdyhq/logdy-core/issues/52). Logdy wasnt designed to be used as in a docker environment, but it does make it easier to deploy and run. 

This is based on the work by https://github.com/rickraven/logdy-docker - with the version increased and an env flag added to allow a config file to be used.
## What is logdy?

Logdy is a web-based platform designed to help monitor, track, and analyze application logs in real-time locally. It is a multi-purpose DevOps tool that enhances productivity in the terminal.

Logdy improves productivity by recording the output of the processes, whether that's standard output or a file, and routes it to a web UI. The web UI is served by Logdy on a specific port and accessible on a local host. The UI is a reactive, low-latency web application that automatically generates filters and allows you to browse and search through the logs.

## Quick reference

* Official github repo of logdy https://github.com/logdyhq/logdy-core
* Logdy documentation https://logdy.dev/docs/what-is-logdy

## How to use this image


## Variables

* LOGDY_PORT - Port on which the Web UI will be served (default: 8080).
* LOGDY_PASS - Password for logdy Web interface.
* LOGDY_MAX_MESSAGE - Determines the maximum number of messages that will reside in the buffer. Buffer is an ordered FIFO queue with a fixed size (default: 1000).
* LOGDY_API_KEY - API key to be used when communicating with Logdy through the [API](https://logdy.dev/docs/reference/rest-api). If not set, it will be automatically generated and output to the startup log.
* LOGDY_MODE - Image may be work in `follow` and `socket` modes (default: socket).
* LOGDY_FOLLOW_FILES - Space separated list of files for following. Working only in `follow` mode.
* LOGDY_SOCKET_PORTS - Space separated list of ports which listens by logdy. Working only in `socket` mode.
* LODGY_CONFIG - Specify a path for the config file
