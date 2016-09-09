# Arlington RUG Demo B: Rails + RDF

This demo is intended to show the basic use of RDF and Linkeddata gems in a rails application. This was done as a part of the "Beyond Human: Rails and the Semantic Web" talk.

## Goals
 * Expose endpoints via robots.txt
 * Expose basic ontology
 * Consume rdf data graph
 * Expose rdf data graph

## How To Use

```
git clone git@github.com:dpulliam/arlington_rug_rdf_script.git
```

```
bundle
```

```
bundle exec rails server
```
## Important Endpoints
```
/robots.txt               # Locations for important endpoints
/ontology/smart_home.rdf  # starting point for ontology
/                         # Graph consumption
/graph                    # Expose graph in html
/graph.rdf                # Expose graph in rdf ntriples
```

## Gems
 * [rdf](https://github.com/ruby-rdf/rdf)
 * [linkeddata](https://github.com/ruby-rdf/linkeddata)
 * [bootstrap-sass](https://github.com/twbs/bootstrap-sass)
 * [autoprefixer-rails](https://github.com/ai/autoprefixer-rails)
