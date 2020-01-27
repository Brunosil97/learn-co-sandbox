def divideBaguetteEvenly
  baguette_length = 60 
  even_length = baguette_length % 3 
  collection = []
 
  while baguette_length >= even_length do 
    even_length >> collection
 end 
  even_length 
end 
  return collection
    