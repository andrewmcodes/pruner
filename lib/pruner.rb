require "tty-prompt"
require "git"

require "pruner/message_formatter"
require "pruner/branches"
require "pruner/version"

module Pruner
  class << self
    def start
      cs = Pruner::Branches.confirmed_selections
      Pruner::Branches.delete(cs)
    end
  end
end
