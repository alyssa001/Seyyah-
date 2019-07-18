class Seyyah::Region 
    attr_accessor :name, :url, :countries, :description

  @@all = [ ]

  def initialize(name, url)
    self.name = name
    self.url = url
    self.countries = [ ]
    self.description = [ ]
    #self.sub_desc = [ ]
  end

  def save
    @@all << self
  end

  def self.create(name, url)
    region = self.new(name, url)
    region.save
    region
  end

  def self.all
    @@all
  end

end