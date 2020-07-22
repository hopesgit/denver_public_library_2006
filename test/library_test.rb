require "./lib/book"
require "./lib/author"
require "./lib/library"
require "minitest/autorun"
require "minitest/pride"

class LibraryTest < Minitest::Test

  def test_it_is_a_library
    dpl = Library.new("Denver Public Library")

    assert_instance_of Library, dpl
  end
end
