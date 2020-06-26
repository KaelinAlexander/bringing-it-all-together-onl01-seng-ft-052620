class Dog
attr_accessor :name, :breed, :id

  def initialize(attr)
    @name = attr[:name]
    @breed = attr[:breed]
    if attr[:id]
      @id = attr[:id]
    else
      @id = nil
    end
  end

  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS dogs (
      id INTEGER PRIMARY KEY,
      name TEXT,
      breed TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL "DROP TABLE IF EXISTS dogs"
    SQL
    DB[:conn].execute(sql)
  end

  def self.new_from_db(row)
    id = row[0]
    name = row[1]
    breed = row[2]
    new_dog = self.new(name: name, breed: breed, id: id)
    new_dog
  end

  def save
    if self.id
      self.update
    else
      sql = <<-SQL
      INSERT INTO songs (name, album)
      VALUES (?, ?)
    end
  end

  def self.create

  end

  def self.find_by_id(id)

  end

  def self.find_or_create_by(name)

  end

  def update

  end

end
