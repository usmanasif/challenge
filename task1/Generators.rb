class Generators
  def initialize
    @data = []
    @report = {}
  end

  def import
    puts "import is called"
    File.open('tib_messages_FPN.2011-07-12').each do |line|
      puts line.inspect
      
      @data << line.split(',')      
    end
    @data
  end

  def calculate_mwh
    @data.each do |production|
      hours = (production[5].to_f - production[3].to_f ) / 60.0
      mean_average_output_level = production[6].to_f + ((production[4].to_f - production[6].to_f )/2.0)
      output = hours * mean_average_output_level

      @report[production[1]] ||= {output: 0}
      
      @report[production[1]][:output]+= output
    end
    
    @report.keys.each do |key|
      puts "#{key}: #{@report[key][:output]} Mwh"
    end
    @report
  end

end


generators = Generators.new
generators.import
generators.calculate_mwh
