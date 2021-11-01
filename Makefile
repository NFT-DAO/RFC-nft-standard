
PP=`pwd`
FN=standard
DIR=./
IMG=
PY=

all: standard.md standard.html

standard.md : standard.raw.md
	m4 -P setup.m4 standard.raw.md >standard.md

%.html: %.md 
	blackfriday-tool ./$< $@
	echo cat ./${DIR}/css/md.css $@ >/tmp/$@
	cat ./${DIR}/css/pre ./${DIR}/css/markdown.css ./${DIR}/css/post ./${DIR}/css/md.css ./${DIR}/css/hpre $@ ./${DIR}/css/hpost >/tmp/$@
	mv /tmp/$@ ./$@

schema_run:
	check-json-syntax json-file-schema.json
	check-json-syntax index.json
	CheckJSONSchema -s json-file-schema.json -d index.json

meta_run:
	check-json-syntax json-file-schema.json
	check-json-syntax index.json
