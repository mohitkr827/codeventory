require 'active_record'

class Snippet < ActiveRecord::Base
  validates :title, presence: true
  validates :code, presence: true

  def self.search(query)
    where("title LIKE ? OR tags LIKE ?", "%#{query}%", "%#{query}%")
  end
end
