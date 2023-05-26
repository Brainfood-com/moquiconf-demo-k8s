#!/bin/sh

set -e

TOP_DIR="$(cd "$(dirname "$0")/."; echo "$PWD")"
export TOP_DIR

"$TOP_DIR/docker-apiserver/scripts/apiserver.sh" --context-dir "$TOP_DIR" -f "$TOP_DIR/registry-compose.yaml" -n registry --agent-count 1 "$@"
#"$TOP_DIR/docker-apiserver/scripts/apiserver.sh" --context-dir "$TOP_DIR" -f "$TOP_DIR/render-node-compose.yaml" -n blender-render-1 -n registry --agent-count 1 "$@"
case "$1" in
	(start)
		#istioctl install -y -f "$TOP_DIR/istio-minimal-operator.yaml"
		#HELMFILE_ENVIRONMENT=localdev helmfile -f cluster/helmfile.yaml apply
		;;

esac
