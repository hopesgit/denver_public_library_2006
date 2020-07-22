require "./lib/book"
require "minitest/autorun"
require "minitest/pride"

class BookTest < Minitest::Test

  def setup
    book = Book.new(author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960")
  end

  def test_it_is_a_book
    book = Book.new(author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960")

    assert_instance_of Book, book
  end

end
