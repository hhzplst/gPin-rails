class Pin < ActiveRecord::Base
  validates :url, presence: :true, uniqueness: :true
  validates :comment, presence: :true, length: {minimum: 10}
end
