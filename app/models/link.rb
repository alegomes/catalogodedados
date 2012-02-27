class Link < ActiveRecord::Base
  belongs_to :orgao

	validates :titulo, :url, :presence => true
end
