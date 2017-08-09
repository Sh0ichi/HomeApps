class CreateDiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :diaries do |t|
      t.date :record_date, null: false, comment: "記録日"
      t.decimal :total, default: 0, comment: "合計"

      # 生活費
      t.decimal :rent, default: 0, comment: "家賃"
      t.decimal :electric, default: 0, comment: "電気代"
      t.decimal :water, default: 0, comment: "水道代"
      t.decimal :communicate, default: 0, comment: "通信費"
      t.decimal :gas, default: 0, comment: "ガス代"
      t.decimal :traffic, default: 0, comment: "交通費"
      t.text :rent_log, comment: "家賃入力"
      t.text :electric_log, comment: "電気代入力"
      t.text :water_log, comment: "水道代入力"
      t.text :communicate_log, comment: "通信費入力"
      t.text :gas_log, comment: "ガス代入力"
      t.text :traffic_log, comment: "交通費入力"

      # 食費
      t.decimal :rice, default: 0, comment: "米・麦"
      t.decimal :bread, default: 0,  comment: "パン・めん・その他"
      t.decimal :fish, default: 0,  comment: "魚貝"
      t.decimal :meat, default: 0,  comment: "肉類"
      t.decimal :egg, default: 0,  comment: "乳卵類"
      t.decimal :soy, default: 0,  comment: "豆"
      t.decimal :beans, default: 0,  comment: "豆製品"
      t.decimal :vegetable, default: 0,  comment: "野菜"
      t.decimal :dry, default: 0,  comment: "乾物・海草"
      t.decimal :processed, default: 0,  comment: "加工食品"
      t.decimal :seasoning, default: 0,  comment: "調味料"
      t.decimal :pastry, default: 0,  comment: "菓子"
      t.decimal :fruit, default: 0,  comment: "果物"
      t.decimal :beverage, default: 0,  comment: "酒・飲料"
      t.decimal :out, default: 0,  comment: "外食"
      t.decimal :other_food, default: 0,  comment: "その他"
      t.text :rice_log, comment: "米・麦入力"
      t.text :bread_log, comment: "パン・めん・その他入力"
      t.text :fish_log, comment: "魚貝入力"
      t.text :meat_log, comment: "肉類入力"
      t.text :egg_log, comment: "乳卵類入力"
      t.text :soy_log, comment: "豆入力"
      t.text :beans_log, comment: "豆製品入力"
      t.text :vegetable_log, comment: "野菜入力"
      t.text :dry_log, comment: "乾物・海草入力"
      t.text :processed_log, comment: "加工食品入力"
      t.text :seasoning_log, comment: "調味料入力"
      t.text :pastry_log, comment: "菓子入力"
      t.text :fruit_log, comment: "果物入力"
      t.text :beverage_log, comment: "酒・飲料入力"
      t.text :out_log, comment: "外食入力"
      t.text :other_food_log, comment: "その他入力"

      # 雑貨
      t.decimal :houseware, default: 0,  comment: "生活雑貨"
      t.decimal :kitchenware, default: 0,  comment: "台所用品"
      t.decimal :cleaning, default: 0,  comment: "洗濯・掃除用品"
      t.decimal :hobby, default: 0,  comment: "嗜好品"
      t.decimal :cosmetics, default: 0,  comment: "化粧品・理美容"
      t.decimal :clothing, default: 0,  comment: "衣類・靴"
      t.text :houseware_log,  comment: "生活雑貨入力"
      t.text :kitchenware_log,  comment: "台所用品入力"
      t.text :cleaning_log,  comment: "洗濯・掃除用品入力"
      t.text :hobby_log,  comment: "嗜好品入力"
      t.text :cosmetics_log,  comment: "化粧品・理美容入力"
      t.text :clothing_log,  comment: "衣類・靴入力"

      # 家具
      t.decimal :furniture, default: 0,  comment: "家具"
      t.decimal :consumer_electronics, default: 0,  comment: "家電"
      t.text :furniture_log,  comment: "家具入力"
      t.text :consumer_electronics_log,  comment: "家電入力"

      # その他
      t.decimal :other, default: 0,  comment: "その他"
      t.text :other_log,  comment: "その他入力"

      t.timestamps null: false
    end
  end
end
