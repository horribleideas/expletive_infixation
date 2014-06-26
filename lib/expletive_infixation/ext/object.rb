class Object
  def method_missing(meth, *args, &block)
    if meth.to_s =~ ExpletiveInfixation.expletive_infix
      new_methods = [
        meth.to_s.gsub(ExpletiveInfixation.expletive_infix, '_'),
        meth.to_s.gsub(ExpletiveInfixation.expletive_infix, '')
      ]

      new_methods.each do |new_method|
        if self.respond_to? new_method.to_sym
          return self.send(new_method.to_sym, *args, &block)
        end
      end
    end

    super
  end
end
