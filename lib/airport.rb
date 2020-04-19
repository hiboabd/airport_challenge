require_relative 'plane'

class Airport
  attr_reader :plane, :capacity

  def initialize(capacity = 10)
    @capacity = capacity
    @plane = Array.new(capacity, Plane.new)
  end

  def take_off(plane)
    raise "This plane (#{plane}) has already taken off" if @plane.include?(plane) == false

    @plane.delete(plane)
    "#{plane} has taken off and is no longer at #{self}"
  end

  def land(plane)
    raise "This plane (#{plane}) has already landed" if @plane.include?(plane)
    raise "This airport (#{self}) has reached maximum capacity." if @capacity == 50

    @plane.push(plane)
    "#{plane} has landed"
  end
end