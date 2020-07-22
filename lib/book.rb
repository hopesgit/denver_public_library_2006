class Book

  attr_reader :author,
              :title,
              :publication_year

  def initialize(details)
    @author = details[:author_first_name] + " " + details[:author_last_name]
    @title = details[:title]
    @publication_year = details[:publication_year]
  end
end
