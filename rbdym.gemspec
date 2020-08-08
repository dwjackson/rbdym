Gem::Specification.new do |s|
  s.name = 'rbdym'
  s.version = '0.1.0'
  s.date = '2020-08-08'
  s.summary = 'Did You Mean...?'
  s.description = 'Fuzzy string matching and edit distance calculation'
  s.authors = ['David Jackson']
  s.email = 'dwjackson@users.noreply.github.com'
  s.files = ['lib/rbdym.rb', 'ext/dym/dym.c']
  s.license = 'MIT'
  s.extensions = ['ext/dym/extconf.rb']
end
