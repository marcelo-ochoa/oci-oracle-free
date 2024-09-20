#!/bin/bash
#
# Since: April, 2023
# Author: marcelo-ochoa
# Name: createMultiArchManifest.sh
# Description: Create a multi-architecture Docker image without using buildx and the --platform argument
#
# Copyright 2024 Marcelo Ochoa
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Create a manifest list for the multi-arch image
docker manifest create mochoa/oracle-free:23.5 \
    mochoa/oracle-free-x86_64:23.5 \
    mochoa/oracle-free-arm64:23.5

# Annotate the manifest to specify the correct architecture for each image
docker manifest annotate mochoa/oracle-free:23.5 mochoa/oracle-free-x86_64:23.5 --arch amd64
docker manifest annotate mochoa/oracle-free:23.5 mochoa/oracle-free-arm64:23.5 --arch arm64

docker manifest push mochoa/oracle-free:23.5

# 23.5-faststart
docker manifest create mochoa/oracle-free:23.5-faststart \
    mochoa/oracle-free-x86_64:23.5-faststart \
    mochoa/oracle-free-arm64:23.5-faststart

# Annotate the manifest to specify the correct architecture for each image
docker manifest annotate mochoa/oracle-free:23.5-faststart mochoa/oracle-free-x86_64:23.5-faststart --arch amd64
docker manifest annotate mochoa/oracle-free:23.5-faststart mochoa/oracle-free-arm64:23.5-faststart --arch arm64
docker manifest push mochoa/oracle-free:23.5-faststart

# latest
docker manifest create mochoa/oracle-free:latest \
    mochoa/oracle-free-x86_64:23.5-faststart \
    mochoa/oracle-free-arm64:23.5-faststart

# Annotate the manifest to specify the correct architecture for each image
docker manifest annotate mochoa/oracle-free:latest mochoa/oracle-free-x86_64:23.5-faststart --arch amd64
docker manifest annotate mochoa/oracle-free:latest mochoa/oracle-free-arm64:23.5-faststart --arch arm64
docker manifest push mochoa/oracle-free:latest

# slim
docker manifest create mochoa/oracle-free:23.5-slim \
    mochoa/oracle-free-x86_64:23.5-slim \
    mochoa/oracle-free-arm64:23.5-slim

# Annotate the manifest to specify the correct architecture for each image
docker manifest annotate mochoa/oracle-free:23.5-slim mochoa/oracle-free-x86_64:23.5-slim --arch amd64
docker manifest annotate mochoa/oracle-free:23.5-slim mochoa/oracle-free-arm64:23.5-slim --arch arm64
docker manifest push mochoa/oracle-free:23.5-slim

# slim-faststart
docker manifest create mochoa/oracle-free:23.5-slim-faststart \
    mochoa/oracle-free-x86_64:23.5-slim-faststart \
    mochoa/oracle-free-arm64:23.5-slim-faststart

# Annotate the manifest to specify the correct architecture for each image
docker manifest annotate mochoa/oracle-free:23.5-slim-faststart mochoa/oracle-free-x86_64:23.5-slim-faststart --arch amd64
docker manifest annotate mochoa/oracle-free:23.5-slim-faststart mochoa/oracle-free-arm64:23.5-slim-faststart --arch arm64
docker manifest push mochoa/oracle-free:23.5-slim-faststart

# full
docker manifest create mochoa/oracle-free:23.5-full \
    mochoa/oracle-free-x86_64:23.5-full \
    mochoa/oracle-free-arm64:23.5-full

# Annotate the manifest to specify the correct architecture for each image
docker manifest annotate mochoa/oracle-free:23.5-full mochoa/oracle-free-x86_64:23.5-full --arch amd64
docker manifest annotate mochoa/oracle-free:23.5-full mochoa/oracle-free-arm64:23.5-full --arch arm64
docker manifest push mochoa/oracle-free:23.5-full

# full-faststart
docker manifest create mochoa/oracle-free:23.5-full-faststart \
    mochoa/oracle-free-x86_64:23.5-full-faststart \
    mochoa/oracle-free-arm64:23.5-full-faststart

# Annotate the manifest to specify the correct architecture for each image
docker manifest annotate mochoa/oracle-free:23.5-full-faststart mochoa/oracle-free-x86_64:23.5-full-faststart --arch amd64
docker manifest annotate mochoa/oracle-free:23.5-full-faststart mochoa/oracle-free-arm64:23.5-full-faststart --arch arm64
docker manifest push mochoa/oracle-free:23.5-full-faststart
