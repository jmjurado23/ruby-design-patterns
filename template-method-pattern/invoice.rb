# frozen_string_literal: true

# Template class that help uset to create a invoice
class Invoice
  attr

  def generate
    check_data
    create_invoice
  end

  def add_seller(seller)
    @seller = seller
  end

  def add_line_concepts(line_concepts)
    @line_concepts = line_concepts
  end

  def check_data
    raise 'Not implemented data' if !@seller || !@line_concepts
  end

  def create_invoice
    raise 'Not implemented method'
  end
end
