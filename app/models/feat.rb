require 'csv'
class Feat < ActiveRecord::Base
  self.inheritance_column = nil

  def self.import_csv(filename)
    return if Feat.count > 0

    CSV.foreach(filename, :headers => true) do |row|
      begin
        Feat.create!(row.to_hash)
      rescue StandardError => e
        puts e
      end
    end
  end
end
