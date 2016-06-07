#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'


names_4 = WikiData::Category.new( 'Category:Wales AMs 2011–16', 'en').member_titles
names_5 = WikiData::Category.new( 'Category:Wales AMs 2016–21', 'en').member_titles
EveryPolitician::Wikidata.scrape_wikidata(names: { en: names_4 | names_5 })
