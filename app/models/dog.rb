class Dog < ApplicationRecord
  has_many :employees

  def self.sort
    dogs = Dog.all.sort_by{|dog| dog.employees.length}.reverse
  end

end
