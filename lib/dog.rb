class Dog
attr_accessor :name, :breed, :id

  def initialize(attr)
    @name = attr[:name]
    @breed = attr[:breed]
    @id = nil
  end

  def self.create_table

  end

  def self.drop_table

  end

  def save

  end

  def self.create

  end

  def self.new_from_db

  end

  def self.find_by_id(id)

  end

  def self.find_or_create_by(name)

  end

  
end
