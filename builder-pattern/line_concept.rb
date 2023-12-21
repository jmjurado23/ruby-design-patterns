# frozen_string_literal: true

# One line concept of a invoice that has to implement
class LineConcept
  attr_reader :concept, :n_items

  def initialize(concept, n_items)
    @concept = concept
    @n_items = n_items
  end
end
