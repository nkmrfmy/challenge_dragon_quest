require './character'

class Brave < Character
  def attack(monster)
    damege = @offense - (monster.defense / 2)
    puts <<~TEXT
      #{@name} の攻撃！
      #{monster.name}に#{damege} のダメージを与えた！
    TEXT
    monster.hp -= damege
    monster.hp = 0 if monster.hp < 0
  end
end
