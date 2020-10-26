# frozen_string_literal: true

# me according to krishnamurti
class Me < Base
  attr_accessor :consciousness

  def initialize
    super
    @consciousness = Consciousness.new
  end

  def deny(fact)
    fact = consciousness.what_is.fetch(1) { |f| f.name = fact }
    fact.deny
  end
end
