# config/initierlizers/time_formats.rb
# 既に定義されているフォーマット
# default => "2014-10-01 09:00:00 +0900"
# long    => "October 01, 2014 09:00"
# short   => "01 Oct 09:00"
# db      => "2014-10-01 00:00:00"

# カスタムフォーマットを定義
Time::DATE_FORMATS[:published_on] = "%Y/%m/%d %H:%M"
Date::DATE_FORMATS[:default]      = "%Y/%m/%d"

Date::DATE_FORMATS[:year_only]      = "%Y"
Date::DATE_FORMATS[:month_only]      = "%m"
Date::DATE_FORMATS[:date_only]      = "%d"

Date::DATE_FORMATS[:yyyy_mm_jp]      = "%Y年%m月"
Date::DATE_FORMATS[:yyyy_jp]      = "%Y年"

Date::DATE_FORMATS[:yyyymmdd]      = "%Y%m%d"
Date::DATE_FORMATS[:yyyymm_slash]      = "%Y/%m"
