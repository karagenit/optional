class Optional
  def initialize(obj)
    @obj = obj
  end

  def method_missing(name, *args)
    value =
      if @obj.nil?
        nil
      else
        @obj.send(name, *args)
      end
    Optional.new(value)
  end

  def else(value)
    @obj || value
  end
end

class Object
  def optional
    Optional.new(self)
  end
end
