export SQUEUE_FORMAT="%.7i %.9P %.8j %.8u %.2t %.10M %.6D %7q %R"

alias my-jobs='squeue -u `whoami` -o "%.18i %.9P %.j %.2t %.6b %.10M %R %.6D %.C %.J %.L" | column -t'

function watch-my-jobs() {
    watch 'squeue -u `whoami` -o "%.18i %.9P %.j %.2t %.6b %.10M %R %.6D %.C %.J %.L"' | column -t
}

function jobs-of() {
    squeue -u $1 -o "%.18i %.9P %.j %.2t %.6b %.10M %R %.6D %.C %.J %.L" | column -t
}

function describe-job() {
    squeue -j $1 -o "%.18i %.9P %.j %.2t %.10M %R %.6D %.C %.J %.L" | column -t
}

function show-jobs() {
    squeue -o "%.18i %8u %.12a %.9P %.10j %.6b %.2t %.10M %R %.6D %.C %.J %.L" | column -t
}

alias list-nodes='sinfo -e -o "%.8o %.5D %.9P %.11T %.13C %.6G %.8z %.6m %.8d %.20f %.20E"'
function list-gpu() {
    if [[ -z "$1" ]]; then
	list-nodes | grep gpu
    else
	list-nodes | grep gpu | grep "$1"
    fi
}

alias list-parts='sinfo -e -o "%.25N %.5D %.9P %.11T %.13C %.6G %.8z %.6m %.8d %.20f %.20E"'
