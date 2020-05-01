#!/bin/sh

set -x

cd $GITHUB_WORKSPACE

rubocop --require ./sarif_formatter.rb --format SarifFormatter -o rubocop.sarif

exit 0
