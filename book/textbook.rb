require './book/book.rb'

class TextBook < Book
  HARDCOVER_CENTS_PER_PAGE = 30.freeze
  SOFTCOVER_CENTS_PER_PAGE = 15.freeze

  attr_accessor :hardcover

  def price_in_cents
    hardcover ? cents_per_page = HARDCOVER_CENTS_PER_PAGE : cents_per_page = SOFTCOVER_CENTS_PER_PAGE
    number_of_pages * cents_per_page
  end
end