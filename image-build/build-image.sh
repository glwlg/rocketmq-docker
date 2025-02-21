#!/bin/bash

# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

if [ $# -lt 1 ]; then
    echo "Usage: sh $0 version#"
    exit -1
fi

ROCKETMQ_VERSION=${1}
if [ -z "${ROCKETMQ_VERSION}" ]
then
  ROCKETMQ_VERSION="4.5.0"
fi

# Build rocketmq
docker build --no-cache -t rocketmqinc/rocketmq:${ROCKETMQ_VERSION} --build-arg version=${ROCKETMQ_VERSION} .
