# frozen_string_literal: true

# Class defined as client that need elements with a specific methods
class Invoice
  def initialize(line_concepts)
    @line_concepts = line_concepts
  end

  def resume_line_concepts
    @line_concepts.each(&:resume)
  end
end
