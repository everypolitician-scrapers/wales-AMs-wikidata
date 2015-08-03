#!/bin/env ruby
# encoding: utf-8

require 'scraperwiki'
require 'wikidata/fetcher'

@pages = [
  'Category:Wales AMs 2011–',
]

@pages.map { |c| WikiData::Category.new(c, 'en').wikidata_ids }.flatten.uniq.each_with_index do |id, i|
  data = WikiData::Fetcher.new(id: id).data('en') or next
  # puts "%s %s" % [data[:id], data[:name]]
  ScraperWiki.save_sqlite([:id], data)
end
