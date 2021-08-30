
all: standard.md

standard.md : standard.raw.md
	m4 -P setup.m4 standard.raw.md >standard.md

schema_run:
	check-json-syntax json-file-schema.json
	check-json-syntax index.json
	CheckJSONSchema -s json-file-schema.json -d index.json
