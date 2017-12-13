require 'mail'

mail = Mail.new do

     from 'kino.musicacount@gmail.com'
     to   'ywada@glodia.jp'
     subject '自分日報'
     body 'お仕事お疲れ様です、現在のタスクをお伝えします'
end

#ここから下にメール設定を書く

mail.delivery_method :smtp, {
							address:'smtp.gmail.com',
							port:587,
							domain: 'kino.musicacount@gmail.com',
							user_name:"wada",
							password:"marian0306"
							}
mail.deliver!