class Dog
attr_accessor :name, :breed

  def initialize(attr)
    @name = attr[:name]
    @breed = attr[:breed]
  end

end
