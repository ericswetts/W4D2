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
    ((Time.now.to_date - self.birth_date) / 365.25).floor
  end
  
  
end
