#!/bin/bash
docker run --rm -v $PWD:$PWD --user $UID:$GID -it -w $PWD registry.gitlab.com/buildroot.org/buildroot/base $*
