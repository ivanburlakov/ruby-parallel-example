# імпортіємо бібліотеку для обчислень
require "matrix"

# задаємо функції с обчилсеннями
def f1
   mo = Matrix[
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1]
   ]
    
   me = Matrix[
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1]
   ]
    
   a = Matrix[
      [1, 1],
      [1, 1],
      [1, 1],
      [1, 1]
   ]
    
   b = Matrix[
      [1, 1],
      [1, 1],
      [1, 1],
      [1, 1]
   ]

   firstMove = mo * me
   secondMove = firstMove * b
   thirdMove = a + secondMove

   return thirdMove
end
 
def f2
   mk = Matrix[
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1]
   ]
  
   ml = Matrix[
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1]
   ]
  
   mg = Matrix[
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1]
   ]

   firstMove = mk * ml
   secondMove = firstMove * mg
   thirdMove = secondMove - mk

   return thirdMove
end

def f3
   mp = Matrix[
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1]
    ]
    
   mr = Matrix[
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [1, 1, 1, 1]
   ]
    
   t = Matrix[
      [1, 1],
      [1, 1],
      [1, 1],
      [1, 1]
   ]
    
   firstMove = mp * mr
   secondMove = firstMove.transpose
   thirdMove = secondMove * t
end

# запускаємо три треди, очікуємо на результати та складаємо в масив
resultf1, resultf2, resultf3 = [
   Thread.new{f1()},
   Thread.new{f2()},
   Thread.new{f3()},
].map(&:value)

# прінтуємо результати у термінал
puts "F1 (C):"
puts resultf1.to_a.map(&:inspect)

puts "F2 (MF):"
puts resultf2.to_a.map(&:inspect)

puts "F3 (O):"
puts resultf3.to_a.map(&:inspect)

# ставимо термінал на паузу
puts "\nExit the script with ENTER"
gets