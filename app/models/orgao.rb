class Orgao < ActiveRecord::Base
  belongs_to :siorg
  belongs_to :licenca
  has_many :links
  accepts_nested_attributes_for :links
	has_many :datasets
end
