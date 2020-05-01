#!/bin/sh

set -x

cd $GITHUB_WORKSPACE

mkdir ../results

rubocop --require ./sarif_formatter.rb --format SarifFormatter -o ../results/output.sarif


