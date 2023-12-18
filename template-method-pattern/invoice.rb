# frozen_string_literal: true

# Template class that help uset to create a invoice
class Invoice
  attr

  def generate
    check_data
    create_invoice
  end

  def add_business(business)
    @business = business
  end

  def add_line_concepts(line_concepts)
    @line_concepts = line_concepts
  end

  def check_data
    raise 'Not defined data' if !@business || !@line_concepts
  end

  def create_invoice
    raise 'Not defined method'
  end
end
