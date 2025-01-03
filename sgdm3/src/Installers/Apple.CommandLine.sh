#!/bin/sh
## A little script to make it easier to launch DiffMerge from the command line.
## Install this script into a folder in your path, such as /usr/bin or /usr/local/bin.
##
## Version @MAJOR@.@MINOR@.@REVISION@.@BUILDNUM@
## Copyright (C) @COPYRIGHTDATE@ SourceGear LLC. All Rights Reserved.
##############################################################################

## Change DIFFMERGE_PATH to point to where you installed DiffMerge

DIFFMERGE_PATH=/Applications/DiffMerge.app

## The actual executable is hidden inside the .app bundle.

DIFFMERGE_EXE=${DIFFMERGE_PATH}/Contents/MacOS/DiffMerge

## Launch DiffMerge using the given command line arguments.  Use --help for
## additional information or see the man page distributed along with this
## shell script.

exec ${DIFFMERGE_EXE} --nosplash "$@"



