task default: [:lib]

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
  rm_f 'dym.so'
  rm_f 'mkmf.log'
  rm_f 'dym.o'
  rm_rf 'lib/dym'
end
