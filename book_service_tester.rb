require './book/ebook.rb'
require './book/textbook.rb'
require './book_service.rb'

require "test/unit"
 
class BookServiceTester < Test::Unit::TestCase
  def setup
    @books = []

    @books << TextBook.new(title: "Harry Potter and the Sorcerers Stone", author: "J.K. Rowling", hardcover: true, number_of_pages: 250)
    @books << TextBook.new(title: "Lord of the Rings, Fellowship of the Ring", author: "J.R.R. Tolkein", hardcover: true, number_of_pages: 900)
    @books << EBook.new(title: "Harry Potter and the Chamber of Secrets", author: "J.K. Rowling", url: "www.harrypotter.com", number_of_pages: 250)

    @service = BookService.new(@books)
  end

  def test_most_expensive_book
    assert_equal(@books[1], @service.most_expensive_book)
    assert_equal(13500, @service.most_expensive_book.price_in_cents)
  end

  def test_cheapest_book
    assert_equal(@books[2], @service.cheapest_book)
    assert_equal(3000, @service.cheapest_book.price_in_cents)
  end

  def test_cost_of_all_books
    assert_equal(20250, @service.cost_of_all_books)
  end
end