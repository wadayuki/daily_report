#initialize

require 'date'


#�f�B���N�g�����쐬

date = Date.today.strftime("%Y-%m-%d")
today_work = './' + date
Dir.mkdir(today_work,0777)
Dir.mkdir(today_work + '/from',0777)
Dir.mkdir(today_work + '/to',0777)

