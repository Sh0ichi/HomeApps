class Month < ApplicationRecord
  validates(:record_month, presence: true)

  def record_month=(param)
    puts 'ログ出力'
    if !param.nil? then
      write_attribute(:record_month, param + '/01')
    end
  end
end
