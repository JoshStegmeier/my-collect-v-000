def my_collect(collection)
  i = 0
  newCollection = []

  while i < collection.size
    newCollection << yield(collection[i])
    i += 1
  end
end

my_collect(collection) do |lang|
  lang.upcase
end