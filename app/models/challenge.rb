class Challenge
  include Mongoid::Document

  has_many :entries
  field :title, type: String
  field :description, type: String
  field :difficulty, type: Integer
  field :githubusername, type: String

  
end
