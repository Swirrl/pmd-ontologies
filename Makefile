.DEFAULT_GOAL := all
RAW_BASE_URL := https://raw.githubusercontent.com/Swirrl/pmd-ontologies/master/src/vocabs

define meta_redirect
	echo "<meta http-equiv="Refresh" content=\"0; url='$(RAW_BASE_URL)/$(2)'\" />" > docs/$(1).html
endef

all: docs/index.html docs/def

docs:
	mkdir docs

docs/index.html: docs
	pandoc src/index.md > $@

docs/def: docs
	mkdir docs/def
	$(call meta_redirect,pmdcat,pmdcat.ttl)
	$(call meta_redirect,def/pmdkos,pmdkos.ttl)
	$(call meta_redirect,def/pmdgeo,pmdgeo.ttl)

clean:
	rm -rf docs