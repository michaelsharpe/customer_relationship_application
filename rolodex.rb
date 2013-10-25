class Rolodex

  @@rolodex = []
  @id= 0

  def self.contact(id)
    @@rolodex[id-1]
  end

  def self.add(contact)
    @@rolodex << contact
  end

  def self.length
    @@rolodex.length
  end

  def self.modify_contact(id, attribute, new_value)
    case attribute
    when 1
      contact(id).first_name = new_value
    when 2
      contact(id).last_name = new_value
    when 3
      contact(id).email = new_value
    when 4
      contact(id).notes = new_value
    end 
  end

  def self.search(choice, search)
    case choice
    when 1
      @@rolodex.each { |contact| contact.display if contact.first_name.downcase == search.downcase }
    when 2
     @@rolodex.each { |contact| contact.display if contact.last_name.downcase == search.downcase }
    when 3
      @@rolodex.each { |contact| contact.display if contact.email.downcase == search.downcase }
    when 4
      @@rolodex.each { |contact| contact.display if contact.note.downcase == search.downcase }
    end
  end

  def self.display_all_contacts
    @@rolodex.each { |contact| contact.display}
  end

  def self.display_particular_contact(id)
    @@rolodex[id]
  end

  def self.delete_contact(id)
    @@rolodex.delete(contact(id))
    reassign_contact_ids
  end

  def self.reassign_contact_ids
    @@rolodex.each { |contact| contact.id = (@@rolodex.index(contact) + 1) }
  end

end