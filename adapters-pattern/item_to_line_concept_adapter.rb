# frozen_string_literal: true

# Adapter that convert items to LineConcepts to can be resumed in invoices
# Hierance is not mandatory but it can help us to override methods
class ItemToLineConceptAdapter < LineConcept
  def initialize(item)
    @item = item

    super(item.name, 1)
  end

  def resume
    puts "#{@n_items} - #{@concept}"
  end
end
