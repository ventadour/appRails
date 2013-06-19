class Document < ActiveRecord::Base
  attr_accessible :titre, :content
  belongs_to :user
  default_scope :order => 'documents.created_at DESC'

end
