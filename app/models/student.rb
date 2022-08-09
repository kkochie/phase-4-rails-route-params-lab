class Student < ApplicationRecord
  #Combine first_name and last_name with a space
  def to_s
    "#{first_name} #{last_name}"
  end

  #find by name
  def self.by_name(name)
    Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{name}", "%#{name}")
  end
end
