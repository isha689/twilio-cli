set -euo pipefail

# Generates and uploads pipeline steps for the edge, beta and stable release

trigger_step() {
#  local name="$1"
#  local trigger_pipeline="$2"
#  local branch="$BUILDKITE_BRANCH"
#  local message_suffix=""

  if [[ "${DRY_RUN:-false}" == "true" ]] ; then
    message_suffix=" (dry-run)"
  fi

  cat <<YAML
  - name: ":rocket: APT release"
    trigger: "apt-packages"
    async: false

YAML
}
