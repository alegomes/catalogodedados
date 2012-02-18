class Orgao < ActiveRecord::Base
  belongs_to :siorg
  belongs_to :licenca
  has_many :links
end
