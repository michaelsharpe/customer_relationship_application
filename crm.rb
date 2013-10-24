class CRM

  def print_main_menu
    puts "\e[H\e[2J"
    puts "[1] add"
    puts "[2] modify"
    puts "[2] display all"
    puts "[3] display contact"
    puts "[4] display attribute"
    puts "[5] delete"
    puts "[6] exit\n"
    puts "Please select and option:"
  end

  def main_menu
    print_main_menu
    user_selected = gets.to_i
    call_option(user_selected)
  end

  def call_option(user_selected)
    case user_selected
    when 1
      add_contact
    when 2
      modify_contact
    when 3
      display_all
    when 4
      display_attribute
    when 5
      delete_contact
    when 6
      
  end

  def add_contact
  end

  def modify_contact
  end

  def display_all
  end

  def display_contact
  end

  def display_attribute
  end

  def delete_contact
  end

  def exit
  end
end

app = CRM.new

app.main_menu