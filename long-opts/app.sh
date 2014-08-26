#!/usr/bin/env bash
set -eo pipefail; [[ -n "$PLUSHU_TRACE" ]] && set -x

case "$1" in
  --app=*)
    export PLUSHU_APP_NAME=${1#--app=}
    shift
    ;;

  --app)
    shift
    export PLUSHU_APP_NAME=$1
    shift
    ;;
esac
