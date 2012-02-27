class Orgao < ActiveRecord::Base
  belongs_to :siorg
  belongs_to :licenca
  has_many :links
	has_many :datasets
	
  accepts_nested_attributes_for :links,
		:allow_destroy => true,
	  :reject_if     => :all_blank

	validates :nome, :url, :licenca, :siorg, :presence => true
end
