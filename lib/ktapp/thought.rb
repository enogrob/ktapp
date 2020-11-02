# frozen_string_literal: true

# fact according to krishnamurti
class Thought < Base
  attr_accessor :name, :status

  def initialize(name, status = sample)
    super()
    @name = name
    @status = status
  end

  def false?
    !status
  end

  def deny
    @status = false
  end

  def methods
    self.class.instance_methods(false) - [:methods]
  end

  private

  def sample
    [true, false].sample
  end
end
