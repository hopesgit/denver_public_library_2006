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

  def find_author(author_to_look_for)
    @authors.index(author_to_look_for)
  end

  def publication_time_frame_for(author_to_look_for)
    index_no = find_author(author_to_look_for)
    @authors[index_no].books.min_by {|book| book.publication_year}
    date_range = {
    start: @authors[index_no].books.first.publication_year,
    end: @authors[index_no].books.last.publication_year
    }
    date_range
  end
end
