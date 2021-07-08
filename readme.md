# PMD Ontologies

This repository hosts the PMD ontologies for http://publishmydata.com.

You can view the ontologies at https://swirrl.github.io/pmd-ontologies.

## Building

The input is taken from the `src` directory.

We host a copy of the vocabularies from this repository in the `src/vocabs` directory. This can be updated from the source (if Muttnik is checked out as a sibling to this repository) with: `cp ../muttnik/resources/base/shared/rdf/vocabs/pmd* src/vocabs`. We need to copy the files in this public repository so that we can use raw.githubusercontent.com to serve the text content without authentication.

Build the site by calling `make`. You'll need `pandoc` to build the index page. The Makefile generates a set of html meta-redirects so that you can visit a URL like `/pmdcat` and be redirected to the raw URL for the turtle file.

The output is generated in `docs` which is the root for the github pages site for this repository.