class Contact
  attr_accessor :id, :first_name, :last_name, :email, :note

  def initialize(id, f_name, l_name, e_mail, a_note)
    @id = id
    @first_name = f_name
    @last_name = l_name
    @email = e_mail
    @note = a_note
  end

  def display
    puts "ID: #{@id}: #{@first_name} #{@last_name}, #{@email}"
    puts "#{@note}"
    puts " "
  end

end