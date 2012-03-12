class Orgao < ActiveRecord::Base
  belongs_to :siorg
  belongs_to :licenca
  has_many :links, :dependent => :destroy
	has_many :datasets, :dependent => :destroy
	has_many :obediencias, :dependent => :destroy
	# has_many :IncisoCartaServicosCidadao, :through => :obediencias
	
  accepts_nested_attributes_for :links,
		:allow_destroy => true,
	  :reject_if     => :all_blank

	 accepts_nested_attributes_for :obediencias,
	 	:allow_destroy => true,
	   :reject_if     => :all_blank

	validates :nome, :url, :licenca, :siorg, :presence => true
	
	default_scope order("nome")
end
