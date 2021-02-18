#.あっち向いてホイアプリ
#.自分が出す手を入力すると自動で出す手をランダムで出力させるプログラム


# 決着がつくまで繰り返す
def main
    while !IsGameFinished()
    end
end

def IsGameFinished
 jankenResult = JankenResult()
 if jankenResult == 2
   puts "あいこで.."
   return false
 end

 if !IsPointDecided()
   puts "じゃんけん・・・"
   return false
 end

 if jankenResult == 1
   puts "YOU WIN！"
 else
   puts "YOU LOSE!"
 end
 return true
end
# じゃんけん
def JankenResult
 puts "じゃんけん・・・"
 choices = ["グー","チョキ","パー"]
 ShowBiginContent(choices)

 my_hand = gets.to_i
 your_hand = rand(choices.size)
 ShowChoiceInfo(choices[my_hand],choices[your_hand])

    
    result = 0  #負け :0, 勝利 :1, 敗北 : 2
    if my_hand == your_hand
      result =2
    elsif (my_hand == 0 && your_hand == 1) || (my_hand == 1 && your_hand == 2) || (my_hand == 2 && your_hand == 0)
      result = 1
    end
    return result
    
end
# あっち向いてホイ
    def IsPointDecided
      puts "あっち向いて"
      choices = ["上","下","左","右"]
      ShowBiginContent(choices)
      
      my_pointing = gets.to_i
      your_pointing = rand(choices.size)
      ShowChoiceInfo(choices[my_pointing], choices[your_pointing])
      
      return (my_pointing == your_pointing)
    end
        
    def ShowBiginContent(choices)
       numChoices = choices.size
       for i in 0..(numChoices-1) do
        puts i.to_s + "("+ choices[i] + ")"
       end
    end
      
    def ShowChoiceInfo(playerChoiceString, programChoiceString)
     puts "ホイ！"
     separator = "------------------------"
     puts separator
     puts "あなた：#{playerChoiceString}"
     puts "相手：#{programChoiceString}"
     puts separator
    end

    
main()