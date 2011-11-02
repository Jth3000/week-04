
# 
# Here is where you will write the method #display_superheroes.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
<<<<<<< HEAD
def display_superheroes(*superheroes)
  superheroes.flatten!
  superheroes.uniq.each do |hero|
    puts "#{hero}"
=======


def display_superheroes(*heroes)
  heroes.flatten.uniq.each do |hero|
    puts "Hero: #{hero.name}"
>>>>>>> 0b13847469d9e9eca826e970b910af111e1b5391
  end
end