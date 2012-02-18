class Vcge < ActiveRecord::Base
  belongs_to :termo_pai, :class_name => Vcge
	has_many :termos_filhos, :class_name => Vcge, :foreign_key => :termo_pai_id
end
