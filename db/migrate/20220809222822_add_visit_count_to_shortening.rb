class AddVisitCountToShortening < ActiveRecord::Migration[7.0]
  def change
    add_column :shortenings, :visit_count, :integer, default: 0
  end
end
