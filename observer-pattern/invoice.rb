# frozen_string_literal: true

require_relative './observable'

# Class that create a invoice with observers on change line concepts
class Invoice
  include Observable

  attr_accessor :seller, :line_concepts

  def initialize(seller, line_concepts)
    @busines = seller
    @line_concepts = line_concepts

    @line_concepts.each do |line_concept|
      notify_observers(line_concept)
    end
  end

  def add_line_concept(line_concept)
    @line_concepts << line_concept
    notify_observers(line_concept)
  end
end
