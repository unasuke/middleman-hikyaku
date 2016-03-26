require "middleman-cli"

module Middleman::Cli
  class Hikyaku < Thor::Group
    include Thor::Actions
    check_unknown_options!

    def self.exit_on_failure?
      true
    end

    def hikyaku
      puts "running!"
    end

    Base.register(self, 'hikyaku', 'hikyaku [options]', "")
  end
end
