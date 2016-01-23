class Friend
  def greeting(name = nil)
    initial_text = "Hello"
    if name
      "#{initial_text}, #{name}!"
    else
      initial_text + "!"
    end
  end
end