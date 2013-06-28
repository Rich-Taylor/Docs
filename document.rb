class Document
  def initialize(title, author, content)
    @title, @author, @content = title, author, content
  end

  def words

    @content.split

  end

  def word_count

    words.size

  end

  def word_frequency
    @word_use = Hash.new
    words.each { |w| @word_use[w] = if @word_use[w] == nil then
                                      1
                                    else
                                      @word_use[w] + 1
                                    end
    }
    @word_use
  end
end

doc = Document.new( 'title', 'author', 'now is the time for all good men to come to the aid of their country')

h = doc.word_frequency

sorted_keys = h.keys.sort

sorted_keys.each do |k|
  printf "%15s %d\n", k, h[k]
end

