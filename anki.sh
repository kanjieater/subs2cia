#!/bin/bash
set -e

FOLDER="${1:-pwd}"
NAME="$(basename "$FOLDER" )"
NOTE_TYPE="${2:-"Japanese"}"
DECK="${3:-"!優先::Y メディア::本::$NAME"}"
SCRIPTNAME="${4:-script.txt}"
echo "Script: $FOLDER/$SCRIPTNAME";
echo "Timing Subs: $FOLDER/$TIMINGSUBS";

python -m subs2cia srs -i "$FOLDER/$NAME.m4b" "$FOLDER/$NAME.srt" -d "$FOLDER/srs_export"
# -p 100 -N
# python anki-csv-importer.py --path "$FOLDER/srs_export/$NAME.csv" --deck "$DECK" --note "$NOTE_TYPE"