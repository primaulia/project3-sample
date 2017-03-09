require 'test_helper'

class PublisherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @the_publisher = publishers(:penguin)
    @jk = authors(:jk_rowling)
    @tolkien = authors(:tolkien)
    @nobody = authors(:new_author)
  end

  test "name of publisher is Penguin" do
    assert_equal "Penguin", @the_publisher.name, "Name is not matched"
  end

  test "one of the authors is JK Rowling" do
    assert(@the_publisher.authors.include?(@jk), "JK Rowling not found")
  end

  test "assert fail for @nobody" do
    assert_not(@the_publisher.authors.include?(@nobody), "Nobody is not one of our authors")
  end

  test "list out all my books from jk rowling" do
    assert_equal @the_publisher.books, @jk.books << @tolkien.books, 'Relationship between publisher and book is not establised'
  end

end
