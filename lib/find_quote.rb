# 
# Here is where you will write the method #find_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
def find_quote(*args)
  args.flatten!
  filename = args[0]
  line = args[1]
  if File.exists?(filename)
    quote = File.readlines(filename).map {|quote| quote.strip }
    line = line.to_i
    if line < 0 or line > quote.length - 1
      return quote.sample
    else
      return quote[line]
    end
  else
    return "Could not find a quote at this time"
  end
end