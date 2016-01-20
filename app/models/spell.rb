require 'csv'

class Spell < ActiveRecord::Base
  def self.import_csv(filename)
    return if Spell.count > 0

    CSV.foreach(filename, :headers => true) do |row|
      Spell.create!(row.to_hash)
    end
  end
end
