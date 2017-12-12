#initialize

require 'date'

#日時の設定
now = Date.today
date_disp = now.strftime("%Y-%m-%d")
day_ow = now.wday
if (day_ow == 6) then
	yesterday = Date.today -3
else

yesterday = Date.today - 1

end
puts(yesterday)
yesterday_disp = yesterday.strftime("%Y-%m-%d")
puts(yesterday_disp)
today_work = './' + date_disp
yesterday_work = './' + yesterday_disp 
puts(yesterday_work)

#ディレクトリを作成


#Dir.mkdir(today_work,0777)
#Dir.mkdir(today_work + '/from',0777)
#Dir.mkdir(today_work + '/to',0777)
line_start = 0
line_end = 0
task_list = []
#タスクファイル作成

File.open(yesterday_work + "/today_task.txt", 'r:utf-8').each do |f|

		next unless f =~ /_Today's task_/ ..  f =~ /_END_/
		task_list.push(f)
end
#昨日のタスクを取ってくる
task_list.pop
task_list.shift

p(task_list)

File.open("./today_task.txt","w+") do|f|
f.puts("〔昨日からのタスク〕")
task_list.each do |list|
f.puts(list)
end
f.puts("〔今日のタスク〕")
f.puts("_END_")


end