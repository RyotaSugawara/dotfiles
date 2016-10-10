#!/bin/sh

echo 'install npm modules...'
npm install \
  eslint \
  babel-eslint \
  eslint-plugin-react \
  textlint \
  textlint-filter-rule-node-types \
  textlint-plugin-jser-markdown \
  textlint-rule-common-misspellings \
  textlint-rule-max-ten \
  textlint-rule-no-doubled-joshi \
  textlint-rule-no-dropping-the-ra \
  textlint-rule-no-mix-dearu-desumasu \
  textlint-rule-no-start-duplicated-conjunction \
  textlint-rule-sentence-length \
  textlint-rule-spellcheck-tech-word \
  typescript \
  -g
echo 'install npm modules...Done!'

