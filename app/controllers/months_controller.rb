class MonthsController < ApplicationController
  def index
    @months = Month.order('record_month DESC')

    @pager_info = PagerInfo.new

    @pager_info.view_main = params.key?(:year) ? Date.new(params[:year].to_i, 1) : Date.new(Date.current.year, 1)

    for i in -3..3 do
      @pager_info.arounds.push(@pager_info.view_main.years_since(i))
    end

    end_year = Date.new(@pager_info.view_main.year, 12, 31)

    @diaries = Diary.where(record_date: @pager_info.view_main..end_year)

    view_months = Enumerator.new do |yielder|
      head = @pager_info.view_main
      tail = end_year

      while head <= tail
        yielder << head
        head = head.next_month
      end
    end

    @index_months = []

    view_months.each do |view_month|
      tmp_month = IndexMonth.new(view_month)

      @months.each do |month|
        if month.record_month.mon == view_month.mon
          tmp_month.income = month.income
          break
        end
      end

      @index_months.push(tmp_month)
    end
  end

  def edit
    @month = Month.find(params[:id])
  end

  def new
    @month = Month.new
    @month.record_month = params[:month]
  end

  def create
    @month = Month.new(month_params)

    if @month.save
      # 登録成功
      if params[:continue_btn]
        redirect_to '/months/new'
      else
        redirect_to '/months'
      end
    else
      render :new
    end
  end

  private

  def month_params
    params.require(:month).permit(
      :record_month,
      :income,
      :income_log
    )
  end
end
