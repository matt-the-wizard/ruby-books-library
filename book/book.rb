class Book
  attr_accessor :author, :title, :number_of_pages

  PRICE_CONVERSION_DENOMINATOR = 100.freeze

  def initialize(params={})
    @author = params[:author]
    @title = params[:title]
    @number_of_pages = params[:number_of_pages]

    raise "NOT IMPLEMENTED" if self.instance_of? Book
  end

  def number_of_pages=(number)
    number.is_a? Integer ? self.number_of_pages = number : self.number_of_pages = 0
  end

  def type
    self.class.name
  end

  def price_in_cents
    raise "NOT IMPLEMENTED"
  end

  def price
    (price_in_cents / PRICE_CONVERSION_DENOMINATOR).to_f
  end

  def to_s
    "#{author}\t#{title}\t#{type}\t$#{price}"
  end
end