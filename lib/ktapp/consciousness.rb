# frozen_string_literal: true

# consciousness according to krishnamurti
class Consciousness < Base
  has_many :thoughts

  alias what_is thoughts

  def initialize
    super
    self.thoughts = []
    thoughts << Thought.new(:search)
    thoughts << Thought.new(:analysis)
  end

  def mutation?
    complete_emptyness?
  end

  def complete_emptyness?
    what_is.all?(&:false?)
  end

  def methods
    self.class.instance_methods(false) - [:methods]
  end
end
