# typed: strong
class User < ApplicationRecord
  searchkick searchable: [:name], language: 'japanese'

  def search_data
    {
      name: name
    }
  end
end
