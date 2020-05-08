#!/bin/bash

TO=$1
SUBJECT=$2
MSGFILE=$3

gpg --output "$MSGFILE.gpg" --encrypt --recipient "$TO" -a --sign "$MSGFILE"
mutt -s "$SUBJECT" "$TO" < "$MSGFILE.gpg"
rm "$MSGFILE.gpg"
