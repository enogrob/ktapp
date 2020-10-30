# frozen_string_literal: true

# Base class for models
class Base
  @@all = []

  def initialize
    super
    @@all << self
  end

  def self.all
    @@all.select { |x| x.instance_of? self }
  end

  def self.count
    all.count
  end

  def self.has_many(name)
    instance_variable_set("@#{name}", [])

    define_method(name) do
      instance_variable_get("@#{name}")
    end

    define_method("#{name}=") do |value|
      instance_variable_set("@#{name}", value)
    end
  end
end
