# frozen_string_literal: true

# Base class for models
class Base
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
