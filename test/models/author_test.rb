require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  def setup
    @the_author = authors(:jk_rowling)
    @new_author = authors(:new_author)
  end

  test "name must be JK Rowling" do
    assert_equal 'JK Rowling', @the_author.name, 'The expected author is not found'
  end

  test "author.book must be Harry Potter and the Chamber" do
    assert_equal 'Harry Potter and the Chamber', @the_author.book.name, 'The author has no book as per fixture'
  end

  test "name must be present" do
    assert_not @new_author.valid?, 'Author name must be validated'
  end

  # test "address must be present" do
  #   assert_equal 'Cambridge', @new_author.address, 'The expected address is not found'
  # end
end
