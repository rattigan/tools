####################################################################################################
# script metadata
this_dir=$(cd $(dirname "$0"); pwd)
this_file="$script_dir"/$(basename "$0")

####################################################################################################
# colors
color_light_black='\e[0;30m' # Black - Regular
color_light_red='\e[0;31m' # Red
color_light_green='\e[0;32m' # Green
color_light_yellow='\e[0;33m' # Yellow
color_light_blue='\e[0;34m' # Blue
color_light_purple='\e[0;35m' # Purple
color_light_cyan='\e[0;36m' # Cyan
color_light_white='\e[0;37m' # White
color_black='\e[1;30m' # Black - Bold
color_red='\e[1;31m' # Red
color_green='\e[1;32m' # Green
color_yellow='\e[1;33m' # Yellow
color_blue='\e[1;34m' # Blue
color_purple='\e[1;35m' # Purple
color_cyan='\e[1;36m' # Cyan
color_white='\e[1;37m' # White
color_bg_black='\e[40m'   # Black - Background
color_bg_red='\e[41m'   # Red
color_bg_green='\e[42m'   # Green
color_bg_yellow='\e[43m'   # Yellow
color_bg_blue='\e[44m'   # Blue
color_bg_purple='\e[45m'   # Purple
color_bg_cyan='\e[46m'   # Cyan
color_bg_white='\e[47m'   # White
color_reset='\e[0m'    # Text Reset

####################################################################################################
# logging

_log_color="$color_cyan"
_log_color_light="$color_light_cyan"
function log {
    log-color "${log_color_dark}" "$@"
}

function log-color {
    local timestamp=$( date +%H:%M:%S )
    local color=$1
    shift
    printf "${_log_color_light}${timestamp}${color} [%s]\n${color_reset}" "$*"
}

####################################################################################################
# bash settings
set -o pipefail

function _on-error {
    local file=$1
    local line=$2
    local exit_code=$3
    log-color "$color_red" "ERROR: exit code $exit_code at $file:$line
    $( cat "$1"  | sed "${line}q;d" )"
    exit $?
}

function trap-on {
    trap '_on-error "$BASH_SOURCE" "$LINENO" "$?"' ERR
}

trap-on
