class Building < ApplicationRecord
  has_many :apartments #Importante que sea en plural la relación de modelos
end
