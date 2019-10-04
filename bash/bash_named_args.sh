#!/bin/bash

set -e

while getopts ":t:s:" opt; do
    case $opt in
        t) target="$OPTARG"
	;;
	s) source="$OPTARG"
	;;
	\?) echo "Invalid option -$OPTARG" >&2 && exit 1
	;;
    esac
done

echo "Argument target is $target"
echo "Argument source is $source"
