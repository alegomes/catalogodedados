class Link < ActiveRecord::Base
  belongs_to :tipo_link
  belongs_to :orgao
end
