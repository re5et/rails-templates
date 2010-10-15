# from https://gist.github.com/280196/5c075f4a3d3a4118d1d706fce07e40572a3873c7#file_template_git.rb
#----------------------------------------------------------------------------
# Git Setup
#----------------------------------------------------------------------------
run "rm .gitignore"

file '.gitignore', <<-FILE
.DS_Store
log/*.log
tmp/**/*
config/database.yml
db/*.sqlite3
public/uploads/*
gems/*
!gems/cache
!gems/bundler
FILE

git :init
git :submodule => "init"
git :add => '.'
git :commit => "-a -m 'Initial commit'"
