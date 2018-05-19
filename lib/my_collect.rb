def my_collect(collection)
  i = 0
  newCollection = []

  while i < collection.size
    newCollection << yield(collection[i])
    i += 1
  end
  newCollection
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end
