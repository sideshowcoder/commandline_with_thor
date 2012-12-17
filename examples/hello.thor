require "thor"

class Hello < Thor

  desc "hello", "Say hello thor"
  def hello
    puts "Hello thor"
  end

  desc "more_hello", "Say hello thor"
  method_options :count => 1
  def more_hello
    options[:count].times { puts "Hello thor" }
  end

  desc "hello_me [NAME]", "Say hello name"
  method_options :count => 1
  def hello_me(name = "thor")
    options[:count].times { puts "Hello #{name}" }
  end

end
