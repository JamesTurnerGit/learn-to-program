class OrangeTree
  def initialize (age = 0, height = 0.0)
    @age = age
    @height = height.to_f
    @oranges = rand ((@age - 2)* 2)
    @max_age = rand(50..60)
  end
  def one_year_passes
    @age += 1
    @oranges = rand ((@age - 2)* 2)
    @height += rand (0.2..0.5)
    if @age == @max_age
      puts "the tree died!"
      exit
    end
  end
  def count_the_oranges
    "#{@oranges} oranges are on the tree"
  end
  def pick_an_orange
    return "there's no oranges right now..." if @oranges == 0
    @oranges -= 1
    return "it tastes just fine!"
  end
end

my_tree = OrangeTree.new 20, 2
puts my_tree.count_the_oranges
puts my_tree.pick_an_orange
