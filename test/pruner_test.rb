require "test_helper"

class PrunerTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Pruner::VERSION
  end
end
