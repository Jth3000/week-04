# 
# Here is where you will write the #url_builder method that are defined in the 
# associated specifications file.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
def url_builder(*args)
  args.flatten!
  url = args[0]
  args = args[1]
  results = 10
  search, sort_by = nil
  if !args.nil?
    if args.has_key?(:results)
      if !results.nil?
        results = args.fetch(:results)
        url = "#{url}?results=#{results}"
      end
    end
    if args.has_key?(:search)
      search = args.fetch(:search)
      if !search.nil?
        url = "#{url}&search=#{search}"
      end
    end
    if args.has_key?(:sort_by)
      sort_by = args.fetch(:sort_by)
      if !sort_by.nil?
        url = "#{url}&sort_by=#{sort_by}"
      end
    end
  else
    url = "#{url}?results=#{results}"
  end
  return url
end
    