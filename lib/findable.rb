module Concerns::Findable

  def find_by_name(name)
    all.detect{|o| o.name == name}
  end

  def find_or_create_by_name(name)
    if find_by_name(name)
      self.find_by_name(name)
    else self.create(name)
    end
  end
end
