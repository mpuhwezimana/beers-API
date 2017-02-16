json.array! @beers.each do |beer|
  json.name beer.name
  json.style beer.style
  json.hop beer.hop
  json.yeast beer.yeast
  json.ibu beer.ibu
  json.alcohol beer.alcohol
  json.blg beer.blg
end