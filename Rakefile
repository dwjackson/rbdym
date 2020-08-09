task default: [:lib]

task :gem => [:lib] do
  sh 'gem build rbdym.gemspec'
end

task :lib => [:extension, ] do
  mkdir_p 'lib/dym'
  cp 'dym.so', 'lib/dym/dym.so'
end

task :extension do
  ruby 'ext/dym/extconf.rb'
  sh 'make'
end

task :clean do
  rm_f 'Makefile'
  rm_f Dir.glob('*.so')
  rm_f 'mkmf.log'
  rm_f Dir.glob('*.o')
  rm_rf 'lib/dym'
  rm_f Dir.glob('*.gem')
end

task test: [:lib] do
  sh 'bundle exec rspec'
end
