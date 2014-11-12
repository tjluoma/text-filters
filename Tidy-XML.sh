#!/bin/zsh -f
#
#	Author:		Timothy J. Luoma
#	Email:		luomat at gmail dot com
#	Date:		2014-11-12
#
#	Purpose 	BBEdit Text Filter to "clean up" XML using tidy.
#				Note that this should not _change_ your XML, just "reformat" or "reflow" it.

	# if there is a `tidy` in `/usr/local/bin` then use that one rather than `/usr/bin`
PATH=/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin

cat "$@" |\
command tidy \
	--char-encoding utf8 \
	--clean yes \
	--force-output yes \
	--indent yes \
	--input-xml yes \
	--join-classes yes \
	--join-styles yes \
	--markup yes \
	--output-xhtml no \
	--output-xml yes \
	--quiet yes \
	--quote-ampersand yes \
	--quote-marks yes \
	--quote-nbsp no \
	--show-errors 0 \
	--show-warnings no \
	--uppercase-attributes no \
	--uppercase-tags no \
	--wrap 0

exit 0
