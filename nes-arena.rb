#!/usr/bin/ruby
# encoding: UTF-8

require 'json'
require 'open-uri'

res = []
uri = "https://docs.google.com/spreadsheets/d/1zA44L7hW48u4mY8RAxR3xK11XJn6eSExLoXHG6mN4gc/pub?gid=1277651390&single=true&output=tsv"
url = URI.parse(uri)
response = open(url).read.force_encoding('ISO-8859-1').encode('UTF-8')
response.split(/\r\n/).each do |l|
	v = l.split(/\t/)
	tmp = {
		"stevne" => v[0],
		"dato" => v[1],
		"øvelse" => v[2],
		"klasse" => v[3],
		"årsklasse" => v[4],
		"navn" => v[5],
		"klubb" => v[6],
		"resultat" => v[7],
		"enhet" => v[8],
	}
	res << tmp
end
p res.to_json