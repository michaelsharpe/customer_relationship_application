class Rolodex
  @contacts = []

  def self.add_contact(contact)
    @contacts << contact
    contact.id = @contact.length + 1
  end

  def self.modify_contact(contact)
  end

  def self.display_all_contacts
    @contact
  end

  def self.display_particular_contact(contact)
  end

  def self.display_info_by_attribute(attribute)
  end

  def self.delete_contact(contact)
    
  end


end