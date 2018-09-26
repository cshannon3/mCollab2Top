class Entry
  include Mongoid::Document
  field :title, type: String
  field :url, type: String
  field :score, type: Integer

  belongs_to :challenge
end
