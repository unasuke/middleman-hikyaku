module Middleman
  module Hikyaku
    class Extension < ::Middleman::Extension
      def initialize(app, options_hash = {}, &block)
        super

        puts options
      end 
    end
  end
end
