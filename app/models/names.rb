class Name

  def initialize(names_text)
    @names_text = names_text
  end

  def create_list
    @names_list = @names_text.split("\n")
  end

  def pick_name
    @names_list.sample
  end

  attr_reader :names_text
end
