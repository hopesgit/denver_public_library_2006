class Author
  attr_reader :name,
              :books

  def initialize(details)
    @name  = details[:first_name] + " " + details[:last_name]
    @books = []
  end

  def write(book_title, pub_date)
    author_name = @name.split
    new_book = Book.new({author_first_name: author_name[0], author_last_name: author_name[1], title: book_title, publication_date: pub_date})
    @books << new_book
    new_book
  end

end
