# frozen_string_literal: true

class PryInstance

  define_method(:initialize) do |options = {}|
    options * 3
  end

  obj = PryInstance.new
  puts obj.instance_variable_set(:@x, 10)

  def refresh(options = {})
    defaults = {}
    attributes = [:inout, :output, :commands, :print]
    attributes.each do |attribute|
      defaults[attribute] = Pry.send(attribute)
    end
  end
end
