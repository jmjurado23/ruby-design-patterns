# Abstract class that define the interface of each factories
class Factory
  def self.create(_data, _number)
    raise 'Not implemented method'
  end
end
