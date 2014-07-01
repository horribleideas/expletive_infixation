class SeriousThing

  def self.truthy?
    true
  end

  def self.is_true?
    true
  end

  def is_true?
    self.class.is_true?
  end

end
