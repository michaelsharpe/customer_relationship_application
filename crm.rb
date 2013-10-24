class Crm

  def initialize
  end

  def main_menu
    puts "\e[H\e[2J"
    puts "[1] add"
    puts "[2] modify"
    puts "[2] display all"
    puts "[3] display contact"
    puts "[4] display attribute"
    puts "[5] delete"
    puts "[6] exit\n"
    puts "Please select an option:"
    option = gets.chomp
  end

  def add
  end

  def modify
  end

  def display_all
  end

  def display_contact
  end

  def display_attribute
  end

  def delete
  end

  def exit
  end

end

class Contact
end

class Rolodex
end
