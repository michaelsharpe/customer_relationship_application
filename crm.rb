class CRM

  require_relative "contact"
  require_relative "rolodex"

  def print_main_menu
    reset
    puts "[1] Add a new contact"
    puts "[2] Modify and existing contact"
    puts "[3] Display a contact"
    puts "[4] Display all contacts"
    puts "[5] Display an attribute"
    puts "[6] Delete a contact"
    puts "[7] Exit\n"
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
      display_contact
    when 4
      display_all
    when 5
      display_attribute
    when 6
      delete_contact
    when 7
      exit
    else
      puts "Sorry, please try again."
      main_menu
    end
  end

  def add_contact
    reset
    puts "Please enter the following:"
    puts "First name:"
      first_name = gets.chomp
    puts "Last name:"
      last_name = gets.chomp
    puts "Email:"
      email = gets.chomp
    puts "Note:"
      note = gets.chomp
    contact = Contact.new(first_name, last_name, email, note)
    Rolodex.add_contact(contact)
    puts "Contact added."
    main_menu
  end

  def modify_contact
    reset
  end

  def display_contact
    reset
  end

  def display_all
    reset
  end

  def display_attribute
    reset
  end

  def delete_contact
    reset
  end

  def exit
    reset
    puts "Are you sure you want to exit? (y/n)"
    response = gets.chomp
    response == "y" ? return : main_menu
  end

  def reset
    puts "\e[H\e[2J"
  end
end

app = CRM.new

app.main_menu