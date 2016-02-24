#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'


names = WikiData::Category.new( 'Category:Wales AMs 2011–', 'en').member_titles
EveryPolitician::Wikidata.scrape_wikidata(names: { en: names })
