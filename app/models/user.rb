class User < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :chores, dependent: :destroy
end
