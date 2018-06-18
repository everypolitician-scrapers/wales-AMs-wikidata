#!/bin/env ruby
# encoding: utf-8

require 'scraperwiki'
require 'wikidata/fetcher'

query = 'SELECT DISTINCT ?item { ?item wdt:P39/wdt:P279* wd:Q3406079 }'
ids = EveryPolitician::Wikidata.sparql(query)

EveryPolitician::Wikidata.scrape_wikidata(ids: ids)
