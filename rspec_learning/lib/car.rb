class Car
  attr_accessor :make, :year, :color
  attr_reader :wheels
  attr_writer :doors
  #empty hash  Map as arguments
  def initialize(options ={})
    #if the first expression is not falsy, return first. else return second.
    self.make= options[:make] || 'volvo'
    self.year = (options[:year] || 2017).to_i
    self.color = (options[:color] || 'unkown').capitalize
    @wheels =4
  end

  def self.colors
    %w[BLUE, BLACK, RED, GREEN]
  end

  def full_name
    return "#{year.to_s} #{self.make} #{self.color}"
  end
end