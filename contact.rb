class Contact
  attr_accessor :id, :first_name, :last_name, :email, :note

  def initialize(f_name, l_name, e_mail, a_note)
    @first_name = f_name
    @last_name = l_name
    @email = e_mail
    @note = a_note
  end

  def display
    puts "#{@id}: #{@first_name} #{@last_name}, #{@email}"
    puts "#{@note}"
  end
end