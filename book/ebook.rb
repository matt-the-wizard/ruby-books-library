require './book/book.rb'

class EBook < Book
  EBOOK_PRICE_IN_CENTS = 3000.freeze

  attr_accessor :url

  def price_in_cents
    EBOOK_PRICE_IN_CENTS
  end
end