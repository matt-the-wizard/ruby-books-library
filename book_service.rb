class BookService
  def initialize(books=[])
    @books = books.compact
  end

  def most_expensive_book
    _books.sort_by(&:price_in_cents)[-1]
  end

  def cheapest_book
    _books.sort_by(&:price_in_cents)[0]
  end

  def cost_of_all_books
    _books.map(&:price_in_cents).reduce(:+)
  end

  private

  def _books
    @books.dup
  end
end