class Department < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 4  }
end
