# 
# Here is where you will write the method #search_for_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
def search_for_quote(args)
  file, start_with, includes, end_with = nil
  if args.has_key?(:file)
    file = args.fetch(:file)
  end
  if args.has_key?(:start_with)
    start_with = args.fetch(:start_with)
  end
  if args.has_key?(:include)
    includes = args.fetch(:include)
  end
  if args.has_key?(:end_with)
    end_with = args.fetch(:end_with)
  end
  if File.exists?(file)
    quotes = File.readlines(file).map {|quote| quote.strip }
    quote = nil
    if !start_with.nil?
      quote = quotes.grep(/^#{start_with}/)
    elsif !includes.nil?
      quote = quotes.grep(/#{includes}/)
    elsif !end_with.nil?
      quote = quotes.grep(/#{end_with}$/)
    else
      quote = quotes
    end
    return quote
  else
    return []
  end
end