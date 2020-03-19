class NameStorer
attr_reader :names

  def initialize
    @names = []
  end

  def store_name(name)
    @names << name
    "Name stored"
  end
end