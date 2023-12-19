# frozen_string_literal: true

# One line concept of a invoice that has to implement <=> comparation operations
class LineConcept
  attr_reader :concept

  def initialize(concept, n_items, price)
    @concept = concept
    @n_items = n_items
    @price = price
  end

  def <=>(other)
    total_price <=> other.total_price
  end

  def total_price
    @n_items * @price
  end
end
