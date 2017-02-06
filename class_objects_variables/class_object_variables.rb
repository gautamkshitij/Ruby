#http://ruby-doc.com/docs/ProgrammingRuby/
#===============================Classes Objects and Variables=============================================================================

#---------------------------Classes------------------------------------------------------------------------
#Basic Classes and Method Overriding in Ruby.
class Song
  #initialize Method:
  def initialize(song_name, artist_name, duration)
    #@variable_name --> is an instance variable, that an instance will hold in the real world.
    @name = song_name
    # @name.=(song_name)
    @artist= (artist_name)
    @duration = (duration)
  end
end
song1 = Song.new("", "", "")
puts song1.inspect
puts "Before Adding to_s Method" + song1.to_s


#---------------------------Overriding Method------------------------------------------------------------------------
#Ruby Classes are never closed, they are open to additions of methods to an existing class (every class in Ruby library).
class Song
  #to_s is one of 35 instance methods in the class Object
  def to_s
    return "\t Song #{@name} -- #{@artist}--#{@duration}"
  end
end

song2 = Song.new("Monkey", "Kshitij", "100")
puts song2.inspect
puts "Overriding to_s Method"+song2.to_s


#===============================INHERITANCE=============================================================================

#-------------------------------& MESSAGES------------------------------------------------------------------------
#Inheritance: Create a refinement or specialization of another class.

#"< Song"--> KaraokeSong is subclass of Song (Song is superclass).

class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end

  def to_s
    #super Method: When you invoke Super with no arguments, Ruby sends a message to OBJECT's parent class and invokes the method with same name
    # and passes the same parameters passed to the current function.
    return super + " \tSubclass: #{@lyrics}"
  end
end

_karoke_song = KaraokeSong.new(" k song", " k artist", " k duration", " k lyrics")
#------- Ruby at Run-Time will look for to_s() method in the karaokeSong, then it's super-class and then it's grandparent class and till the object class.
puts _karoke_song.to_s

#-------------------------------& Mixins------------------------------------------------------------------------
#http://stackoverflow.com/questions/918380/abstract-classes-vs-interfaces-vs-mixins
#Mixins (Partial Class definition): Simplicity of Single Inheritance (only one parent class)+ Power of Multiple Inhertiance (include functionality of any mixins)


#===============================Objects & Attributes=============================================================================


#Attributes: The externally visible facets of an object are called it's attributes.
#Attribute Reader/writer: attr_reader, attr_writer, attr_accessor(both)

class Song
  #:symbol : It's a symbol, accessor methods create @instance_variables automatically with their methods
  attr_reader :a, :b, :d

  #setter methods: good convention to use = sign in method name for setting up.
  def setA=(a)
    @a = a
  end

  #att_writer: creates d= method name to set the value of instance variable @d
  attr_writer :d

  #Uniform Access Principle: Hiding the difference between instance variables & Calculated values (via methods)



end
