class Object

  def method_missing(name, *args, &block)
    m = Explete.target_method(self, name) and send m, *args, &block or super
  end

  def respond_to_missing?(name, include_private=false)
    !!Explete.target_method(self, name) or super
  end

end

# Save cognitive overhead by having this in the same file
class Explete < Struct.new(:object, :method)
  INFIX_SUBSTITUTIONS = ['', '_'].freeze # such performance.

  def self.target_method(*args)
    new(*args).target_method
  end

  def target_method
    infix =~ method and find_real_method
  end

  def infix
    ExpletiveInfixation.expletive_infix
  end

  def find_real_method
    possible_method_names.find { |m| object.respond_to? m }
  end

  def possible_method_names
    INFIX_SUBSTITUTIONS.map &infix_substitution
  end

  # like a pro.
  def infix_substitution
    -> (substitution) { method.to_s.gsub infix, substitution }
  end

end

