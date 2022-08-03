require './character'

class Monster < Character
  def appear
    puts "#{@name} があらわれた!"
  end

  def attack(brave)
    damege = @offense - (brave.defense / 2)
    puts <<~TEXT
      #{@name}の攻撃！
      #{brave.name}は#{damege} のダメージを受けた！
    TEXT
    brave.hp -= damege
    brave.hp = 0 if brave.hp < 0
  end
end
