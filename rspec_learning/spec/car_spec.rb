#===============================Example Syntaax=============================================================================
# Describe 'Class Name' do (#ruby block)
# #example group, more describes can be added. 1 describe group per class is good.
# #or use context → sub group.
# it "String for output in English"  do (ruby block)
# #expectations
# expect(argument to expect).to(argument to method to)
# expect(argument to expect).not_to(argument to method to)
# end
# End

#===============================Rspec=============================================================================
# Rspec Hierarchy
# Spec file → classname_spec.rb
# Example group → describe
# Nested group → context/describe
# Example → it
# Expectations → expect().to()


require 'rspec'
require 'car'
#class Car
describe 'Car' do
  describe 'attributes' do
    it "allows reading and writing for :make" do
      car = Car.new
      car.make = 'Test'
      expect(car.make).to eq('Test1')
    end

    it "Example of Pending example: rspec will show that you haven't completed this"
  end
#testing class method (use .)
  describe '.colors' do

  end
#testing instance method (use #)
  describe '#full_name' do

  end

end