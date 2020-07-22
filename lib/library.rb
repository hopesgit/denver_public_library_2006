class Library

  attr_reader :name,
              :authors

  def initialize(name)
    @name    = name
    @authors = []
    @books   = []
  end

  def add_author(author)
    @authors << author
  end

  def books
    @authors.each do |author|
      author.books.each do |book|
        @books << book
      end
    end
    @books
  end
end
