class CreateMonths < ActiveRecord::Migration[5.1]
  def change
    create_table :months do |t|
      t.date :record_month, null: false, default: 0,  comment: "記録月"
      t.decimal :income, default: 0,  comment: "収入"
      t.text :income_log,  comment: "収入入力"

      t.timestamps null: false
    end
  end
end
