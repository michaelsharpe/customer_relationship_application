class CRM

  require_relative "contact"
  require_relative "rolodex"

  def print_main_menu
    reset
    puts "[1] Add a new contact"
    puts "[2] Modify an existing contact"
    puts "[3] Search for a contact"
    puts "[4] Display all contacts"
    puts "[5] Display according to an attribute"
    puts "[6] Delete a contact"
    puts "[7] Exit\n\n"
    puts "Please select an option:"
  end

  def main_menu
    print_main_menu
    user_selected = gets.to_i
    call_option(user_selected)
  end

  def call_option(user_selected)
    case user_selected
    when 1
      reset
      add_contact
    when 2
      reset
      modify_contact
    when 3
      reset
      search_contact
    when 4
      reset
      display_all_contacts
    when 5
      reset
      display_attribute
    when 6
      reset
      delete_contact
    when 7
      exit
    else
      puts "Sorry, please try again."
      print_main_menu
    end
  end

  #features

  def add_contact
    puts "Please enter the following:"
    puts "First name:"
    first_name = gets.chomp
    puts "Last name:"
    last_name = gets.chomp
    puts "Email:"
    email = gets.chomp
    puts "Note:"
    note = gets.chomp
    id = Rolodex.length + 1

    contact = Contact.new(id, first_name, last_name, email, note)
    Rolodex.add(contact)
    puts "\nContact added."
    puts " "
    menu_return
  end

  def modify_contact
    message = "Please enter the ID of the contact you would like to modify:"
    id = select_contact_id(message)
    puts " "
    display_contact(id)
    puts "What atrribute would you like to modify?"
    attribute= attribute_select
    puts "What would you like to change this to?"
    new_value = gets.chomp
    Rolodex.modify_contact(id, attribute, new_value)
    puts "\nContact modified. \n\n"
    menu_return
  end

  def search_contact
    puts "Which attribute would you like to search by?"
    choice = attribute_select
    puts "What are you searching for?"
    search = gets.chomp
    Rolodex.search(choice, search)
    menu_return
  end

  def display_contact(id)
    Rolodex.display_particular_contact(id)
  end

  def display_all_contacts
    Rolodex.display_all_contacts
    menu_return
  end

  def display_attribute
    puts  "How would you like to display your contacts?"
    choice = attribute_select
    puts "#{Rolodex.display_info_by_attribute(choice)}"
    menu_return
  end

  def delete_contact
    message = "WPlease enter the ID of the contact you would like to delete?"
    id = select_contact_id(message)
    Rolodex.delete_contact(id)
    menu_return
  end

  #display definitions

  def display_contacts
    Rolodex.display_all_contacts
  end

  def select_contact_id(message)
    display_contacts
    puts "#{message}"
    id = gets.to_i
    if Rolodex.contact(id).nil?
      while contact(id).nil?
       reset
       puts "That isn't a contact.  Try again."
       display_contacts
       id = gets.to_i
     end
   end
   return id
  end

  def attribute_select
    puts "[1] First name"
    puts "[2] Last name"
    puts "[3] Email"
    puts "[4] Note"
    puts "Please enter a number:"
    choice = gets.to_i
    if choice <= 4
      choice 
    else 
      puts "That is not an option, please try again."
      gets
      reset
      attribute_select
    end
  end 

  def menu_return
    puts "Press enter to return to main menu."
    gets
    main_menu
  end

  def reset
    puts "\e[H\e[2J"
  end

  def exit
    reset
    puts "Are you sure you want to exit? (y/n)"
    response = gets.chomp
    response == "y" ? return : main_menu
  end

  #checks

  def nil_check(result)
    if result.nil?
      puts "I am sorry, I can't find that."
    else
      result
    end
  end

end

app = CRM.new

app.main_menu