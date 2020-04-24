#!/usr/bin/env bash
credhub get -j -n /concourse/main/poolsmiths_api_token | jq -r .value
