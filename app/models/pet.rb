class Pet < ActiveRecord::Base
  validates :store_id, presence: true
end
