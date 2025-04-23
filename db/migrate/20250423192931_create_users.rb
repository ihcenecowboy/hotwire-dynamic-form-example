class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :country, limit: 2
      t.string :community
      t.string :state
      t.string :province
      t.string :language
      t.boolean :gdpr_opt_out

      t.timestamps
    end
  end
end
