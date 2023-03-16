# frozen_string_literal: true

class Lawyer
  private def method_missing(symbol, *args)
    puts "You called: #{symbol}(#{args.join(', ')})"
    puts "(You also passed it a block)" if block_given?
  end
end
