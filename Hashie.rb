# frozen_string_literal: true

module Hashie
  class Mash < Hashie::Hash
    def method_missing(method_name, *args,&blk)
      return self.[](method_name, &blk) if args.empty? && block_given?
    end
  end
end
