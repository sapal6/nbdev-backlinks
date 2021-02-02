### A Nbdev script file ###
### Autogenerated file. Don't modify. ###

module ConfigReader
#export
using ConfParser

#export
"""
> read_conf(confpath::String="../settings.ini")--> Takes in the config filepath and parses the different configurations(key/value pair. Returns a dictionary
"""
function read_conf(confpath::String="../settings.ini")
	conf = ConfParse(confpath)
	parse_conf!(conf)

    # get and store config parameters
    lib_name = retrieve(conf, "lib_name")
	lib_path = retrieve(conf, "lib_path")
    user = retrieve(conf, "user")
    description = retrieve(conf, "description")
    keywords = retrieve(conf, "keywords")
	author = retrieve(conf, "author")
	author_email = retrieve(conf, "author_email")
	copyright = retrieve(conf, "copyright")
	
	Dict("lib_name"=>lib_name,
		  "lib_path"=>lib_path,
		 "user" => user,
		 "description" => description,
		 "keywords" => keywords,
		 "author" => author,
		 "author_email" => author_email,
		 "copyright" => copyright)
end

end