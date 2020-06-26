class Dog
attr_accessor :name, :breed, :id

  def initialize(attr)
    @name = attr[:name]
    @breed = attr[:breed]
    @id = nil
  end

end
