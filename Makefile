
all: standard.md

standard.md : standard.raw.md
	m4 -P setup.m4 standard.raw.md >standard.md

