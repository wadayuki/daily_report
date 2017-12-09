require 'mail'

mail = Mail.new do

     from 'kino.musicacount@gmail.com'
     to   'ywada@glodia.jp'
     subject '自分日報'
     body 'お仕事お疲れ様です、現在のタスクをお伝えします'
end

#ここから下にメール設定を書く