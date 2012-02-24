class Link < ActiveRecord::Base
  belongs_to :tipo_link
  belongs_to :orgao

	validates :tipo_link, :titulo, :url, :presence => true
end
