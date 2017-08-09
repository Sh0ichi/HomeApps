class DiariesController < ApplicationController
  def index
    @diaries = Diary.order('record_date DESC')

    @index_diaries = []

    @pager_info = PagerInfo.new

    @pager_info.view_main = params.key?(:year) && params.key?(:month) ? Date.new(params[:year].to_i, params[:month].to_i) : Date.current

    for i in -3..3 do
      @pager_info.arounds.push(@pager_info.view_main.months_since(i))
    end

    beginning_of_month = @pager_info.view_main.beginning_of_month.to_date
    start_day = beginning_of_month - beginning_of_month.wday
    end_of_month = @pager_info.view_main.end_of_month.to_date
    end_day = end_of_month + (6 - end_of_month.wday)

    for i in start_day..end_day
      tmp_diary = IndexDiary.new
      tmp_diary.record_date = i

      @diaries.each do |diary|
        if diary.record_date == i
          tmp_diary = diary
          break
        end
      end

      tmp_diary.in_month_flag = @pager_info.view_main.mon == i.mon

      @index_diaries.push(tmp_diary)
    end
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
    @diary = Diary.find(params[:id])
    @diary.update_attributes(diary_params)
    redirect_to '/diaries'
  end

  def new
    @diary = Diary.new
    @diary.record_date = params[:date]
  end

  def create
    @diary = Diary.new(diary_params)

    if @diary.save
      # 登録成功
      if params[:continue_btn]
        redirect_to '/diaries/new'
      else
        redirect_to '/diaries'
      end
    else
      render :new
    end
  end

  private
  def diary_params
    params.require(:diary).permit(
      :record_date,
      # 生活費
      :rent,
      :electric,
      :water,
      :communicate,
      :gas,
      :traffic,
      :rent_log,
      :electric_log,
      :water_log,
      :communicate_log,
      :gas_log,
      :traffic_log,

      # 食費
      :rice,
      :bread,
      :fish,
      :meat,
      :egg,
      :soy,
      :beans,
      :vegetable,
      :dry,
      :processed,
      :seasoning,
      :pastry,
      :fruit,
      :beverage,
      :out,
      :other_food,
      :rice_log,
      :bread_log,
      :fish_log,
      :meat_log,
      :egg_log,
      :soy_log,
      :beans_log,
      :vegetable_log,
      :dry_log,
      :processed_log,
      :seasoning_log,
      :pastry_log,
      :fruit_log,
      :beverage_log,
      :out_log,
      :other_food_log,

      # 雑貨
      :houseware,
      :kitchenware,
      :cleaning,
      :hobby,
      :cosmetics,
      :clothing,
      :houseware_log,
      :kitchenware_log,
      :cleaning_log,
      :hobby_log,
      :cosmetics_log,
      :clothing_log,

      # 家具
      :furniture,
      :consumer_electronics,
      :furniture_log,
      :consumer_electronics_log,

      # その他
      :other,
      :other_log
    )
  end
end
