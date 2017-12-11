#initialize

require 'date'

#日時の設定
now = Date.today
date_disp = now.strftime("%Y-%m-%d")
day_ow = now.wday
if (day_ow == 6) then
	yesterday = Date.today -3
else

yesterday = Date.today -1

end

yesterday_disp = yesterday.strftime("%Y-%m-%d")

today_work = './' + date_disp
yesterday_work = './' + yesterday_disp 

#ディレクトリを作成


Dir.mkdir(today_work,0777)
Dir.mkdir(today_work + '/from',0777)
Dir.mkdir(today_work + '/to',0777)

#タスクファイル作成
File.open(yesterday_work + "/today_task.txt","r")do|f|
	if (f == "〔今日のタスク〕") then
	p(f)
	end
end

File.open("./today_task.txt","w+") do|f|
f.puts("〔昨日からのタスク〕")
f.puts("〔今日のタスク〕")
end