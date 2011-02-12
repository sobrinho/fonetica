class String
  def foneticalize
    Fonetica.instance.foneticalize(self)
  end
end
