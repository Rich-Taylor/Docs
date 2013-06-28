## Document class performs various document oriented tasks
##
class Document
  def initialize(title, author, content)
    @title, @author, @content = title, author, content
  end

  ## Return an array of the words in the content variable
  ##
  def words
    @content.split
  end

  ## Return the count of the words in the content variable
  ##
  def word_count
    words.size
  end

  ## Return a hash containing the content variable words associated
  ## with their frequency in the content as values
  ##
  def word_frequency
    @word_use = Hash.new(0)
    words.each { |w| @word_use[w] += 1 }
    @word_use
  end
end

## Code begins here
##
doc = Document.new( 'title', 'author', 'now is the time for all good men to come to the aid of their country')

h = doc.word_frequency

sorted_keys = h.keys.sort

sorted_keys.each do |k|
  printf "%15s %d\n", k, h[k]
end

