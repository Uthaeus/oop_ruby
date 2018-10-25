require 'rspec'

class FileWriter 
    def initialize num, path 
        @num = num 
        @path = path 
    end

    def write 
        @num.times do |x|
            File.open(@path, 'w+') { |f| f.puts x }
        end
    end
end

describe FileWriter do
  it 'writes 1k lines to a text file' do
    file_path = 'file_writer.txt'

    fw = FileWriter.new(
      number_of_lines: 1000,
      file_path: file_path
    ).write

    count = File.foreach(file_path).count
    expect(count).to eq(1000)
  end
end