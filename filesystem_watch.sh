source "$(dirname "${BASH_SOURCE[0]}")/requires.sh"

requires find xargs stat md5sum awk

function filesystem_watch() {
	while true; do
		local hash=$(find "$3" -print0 | xargs -0 stat | md5sum | awk '{print $1}')
		if [ "$1" != "$hash" ]; then
			echo "$hash"
            return
		fi
		sleep $2
	done
}