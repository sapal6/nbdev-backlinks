### A Nbdev script file ###
### Autogenerated file. Don't modify. ###

module Make
#export
using OrderedCollections

#export
include("../src/Documenter.jl")

#export
include("../src/Common.jl")

#export
import YAML

#export
"""
> build(nbsdir)--> extracts markdown items and builds documentation from the notebooks in the given directory. Also, creates creates a readme file with content in the project root.
"""
function build(nbsdir)
    Documenter.export2md(nbsdir)
	Documenter.export2readme()
end

#export
export build

#export
mkdocs = OrderedDict("site-name" => "your site name", "nav" => [OrderedDict("Home" => "index.md")],
"theme" => OrderedDict("name" => "material", "palette" => OrderedDict("primary" => "white"), "font" => OrderedDict("text" => "Roboto"), "logo" => "assets/asset image filename", "favicon" => "asset/ asset name", "features" => "navigation.tabs", "markdown_extensions" => ["meta", "toc"], "plugins" => ["search", "tags"]), "extra" => OrderedDict("social" => [OrderedDict("icon" => "fontawsome/brans/twitter", "link" => "twitter link"), OrderedDict("icon" => "fotawsome/brands/linkedin", "link" => "linkedin link")]), "repo_url" => "url to your git repo", "repo_name" => "name of your git repo")

#export
begin
"""
> new(projname)-> Scaffolds a new project sub-directories and configuration files.
"""
function new(path = ".")
	dirs = ["$path/docs", "$path/nbs", "$path/src", "$path/docs/images", "$path/docs/assets"]
	files = ["$path/Manifest.toml", "$path/Project.toml", "$path/mkdocs.yml", "$path/nbs/index.jl"]
	map(mkpath, dirs)
	map(touch, files)
	YAML.write_file(files[3], mkdocs)
end
end

#export
export new

end