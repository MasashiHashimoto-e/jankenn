def janken
    while true
        puts "じゃんけん..."
        puts "[0]:グー\n[1]:チョキ\n[2]:パー\n[3]:戦わない"
        
        player_hand = gets.to_i
        program_hand = rand(3)
        
        if player_hand > 3 #３以上を選んだ場合無効にする
        puts "入力された値が無効です"
        puts "-----------------------"
        return true
        end
    
        jankens=["グー","チョキ","パー","戦わない"]
    
        puts "あなたの手:#{jankens[player_hand]}, プログラムの手:#{jankens[program_hand]}"
        
        if player_hand == 3 #プレイヤーが試合を放棄した場合
        puts "ゲームを終了します"
        puts "-----------------------"
        exit!
        end
        
        if player_hand == program_hand
        puts "あいこです"
        puts "-----------------------"

    elsif (player_hand == 0 && program_hand ==1) ||
          (player_hand == 1 && program_hand ==2) || 
          (player_hand == 2 && program_hand ==0)
        puts "じゃんけんに勝ちました"
        puts "あっち向いてホイに移ります！"
        puts "-----------------------"
        vicory_acci_muite_hoi
    else
        puts "じゃんけんに負けました"
        puts "あっち向いてホイに移ります！"
        puts "-----------------------"
        lose_acci_muite_hoi
    end
end
end

def vicory_acci_muite_hoi
    while true
    puts "あっち向いてホイ！"
    puts "[0]:上\n[1]:下\n[2]:左\n[3]:右"
    player_finger = gets.to_i
    program_finger = rand(4)
    if player_finger > 3
        puts "入力された値が無効です"
        puts "-----------------------"
        return true
    end
    
    attimuites = ["上","下","左","右"]
    
    puts "あなたの選択:#{attimuites[player_finger]}, プログラムの選択:#{attimuites[program_finger]}"

    if player_finger == program_finger
        puts "あなたの勝ち"
        puts "ゲームを終了します"
        puts "-----------------------"
        exit!
    else
        puts "勝負がつかなかったのでもう一度じゃんけんから！"
        puts "-----------------------"
        janken
    end
end
end

def lose_acci_muite_hoi
    while true
    puts "あっち向いてホイ！"
    puts "[0]:上\n[1]:下\n[2]:左\n[3]:右"
    
    player_finger = gets.to_i
    program_finger = rand(4)
    if player_finger > 3
        puts "入力された値が無効です"
        return true
    end
    
    attimuites = ["上","下","左","右"]
    
    puts "あなたの選択:#{attimuites[player_finger]}, プログラムの選択:#{attimuites[program_finger]}"

    if player_finger == program_finger
        puts "あなたの負け"
        puts "ゲームを終了します"
        puts "-----------------------"
        exit!
    else
        puts "勝負がつかなかったのでもう一度じゃんけんから！"
        puts "-----------------------"
        janken
    end
end
end

next_game = true

while next_game
  next_game = janken
end

