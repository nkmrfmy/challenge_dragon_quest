require './brave'
require './monster'
require './character'

brave = Brave.new(name: 'ゆうしゃ', hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: 'アークデーモン', hp: 210, offense: 140, defense: 80)
# monster = Monster.new(name: 'シドー', hp: 250, offense: 255, defense: 255)

# ステータスの表示
def disp_status(brave, monster)
  puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*=*=*=*
  TEXT
end

# ===ここから戦闘プログラム===

# モンスターが出現
monster.appear

# ゆうしゃとモンスターがHP:0になるまで攻撃処理を繰り返す
while true
  brave.attack(monster) if brave.hp > 0
  monster.attack(brave) if monster.hp > 0
  disp_status(brave, monster)
  break if brave.hp == 0 || monster.hp == 0
end

# どちらかが死亡した場合のメッセージ
if monster.hp == 0
  puts "#{monster.name}をやっつけた！"
elsif brave.hp == 0
  puts "#{brave.name}はしんでしまった！"
end
