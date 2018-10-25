#require 'rspec'

def number_lines path 
    File.open(path, 'w+').each do |l, ind|
        temp = "#{ind + 1}. #{l}"
        p temp 
        puts temp 
    end
end

# describe 'number_lines' do
#   it 'adds numbers to each line number of a file' do
#     begin
#       %x{rm support/april_13_numbered_lines.txt}
#     rescue
#     end
#     path = 'support/april_13_lines.txt'
#     number_lines(path)
#     expect(File.read('support/april_13_numbered_lines.txt')).to eq(File.read('support/april_13_solution.txt'))
#   end
# end

number_lines "file_lessons/number_lines.txt"