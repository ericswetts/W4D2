class Cat < ApplicationRecord
  COLORS= [
    'Adi', 
    'Calico', 
    'Blood Red', 
    'Red', 
    'Green'
    ]
  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :sex, inclusion: { in: ['M', 'F'] }
  validates :color, inclusion: { in: COLORS }
  
  def age
    Time.now - self.birth_date
  end
  
  
end
