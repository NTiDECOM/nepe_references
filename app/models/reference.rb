require 'elasticsearch/model'

class Reference < ActiveRecord::Base

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  validates :chapter, presence: true
  validates :versicle, presence: true
  validates :keyword, presence: true
  validates :query_reference, presence: true
  validates :bible_book_id, presence: true

  belongs_to :bible_book

end
Reference.import
