require "expletive_infixation/version"
require "expletive_infixation/ext/object"

module ExpletiveInfixation
  DEFAULT_EXPLETIVE = 'freakin'

  def self.expletive_infix
    Regexp.new("_?#{@expletive_infix || DEFAULT_EXPLETIVE}_?")
  end

  def self.expletive_infix=(regexp)
    @expletive_infix = regexp
  end
end
