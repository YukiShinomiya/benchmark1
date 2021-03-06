class User < ApplicationRecord
  validates :password, {presence:true, uniqueness:true}
  validates :name, {presence:true}
  validates :email, {presence:true, uniqueness:true}
end
