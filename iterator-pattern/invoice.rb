# frozen_string_literal: true

# Class that include Enumerable for line_concept operations
class Invoice
  include Enumerable

  def initialize
    @line_concepts = []
  end

  def each(&block)
    @line_concepts.each(&block)
  end

  def add_line_concept(line_concept)
    @line_concepts << line_concept
  end
end
