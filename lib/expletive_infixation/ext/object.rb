class Object
  INFIX_SUBSTITUTIONS = ['', '_'].freeze # such performance.

  def method_missing(meth, *args, &block)
    infix = ExpletiveInfixation.expletive_infix
    sub   = ->(s) { meth.to_s.gsub infix, s }

    infix =~ meth and m = INFIX_SUBSTITUTIONS.map(&sub).map(&:to_sym).find { |m| respond_to? m } or super
    send m, *args, &block
  end
end
