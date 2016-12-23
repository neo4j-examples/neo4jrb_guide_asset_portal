class Book < Asset
  include Neo4j::ActiveNode
  property :isbn, type: String
  property :title, type: String
  property :year_published, type: Integer

  has_one :in, :author, type: :CREATED, model_class: :User
  has_many :out, :categories, type: :HAS_CATEGORY


end
