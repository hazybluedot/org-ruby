require 'org-ruby'
require 'benchmark'

def run_html_output_benchmark(n=30)
  org_content = File.open('bench.org').read  

  puts "Parsing #{n} times"
  Benchmark.bmbm do |x|
    
    x.report('html conversion') do
      n.times do
        Orgmode::Parser.new(org_content).to_html
      end
    end
  end
end

def run_textile_output_benchmark(n=30)
  org_content = File.open('bench.org').read

  puts "Parsing #{n} times"
  x.report('textile conversion') do
    n.times do
      Orgmode::Parser.new(content).to_textile
    end
  end
end

def run_parsing_file_benchmark(n=30)
  puts "Parsing #{n} times"
  x.report('textile conversion') do
    n.times do
      Orgmode::Parser.load('bench.org')
    end
  end
end

puts "Running benchmark using OrgRuby version #{OrgRuby::VERSION} with Ruby #{RUBY_VERSION}"
run_html_output_benchmark
# run_textile_output_benchmark
# run_parsing_file_benchmark
