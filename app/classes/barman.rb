class Barman

  attr_accessor :name

  def greetings
    options = {
      true => -> {  puts "What u want ? >:v" }
    }
    options.default = -> { puts "Hi im #{@name}, what u whant to drink?" }
    options[@name.nil?].()
  end

  def says(text)
    puts text
  end

end