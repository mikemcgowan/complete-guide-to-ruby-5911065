Dir.glob('**/*.txt').each { puts it if File.read(it).include? 'treasure' }
