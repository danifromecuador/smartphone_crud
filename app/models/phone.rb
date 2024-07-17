class Phone < ApplicationRecord
  validates :pbrand, presence: true
  validates :pmodel, presence: true
end
