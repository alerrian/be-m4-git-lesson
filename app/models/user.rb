class User < ApplicationRecord
  has_many  :orders
  validates :email,
            :first_name,
            :last_name,
            :address,
            :role,
            presence: true

  validates_uniqueness_of :email
  has_secure_password

  # This is an awesome alternate way to fix enum roles!!!!
  enum role: %i[default admin]
end
