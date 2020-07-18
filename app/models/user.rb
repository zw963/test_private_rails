# typed: strong
class User < ApplicationRecord
  searchkick searchable: [:name]

  def search_data
    {
      name: name
    }
  end
end
