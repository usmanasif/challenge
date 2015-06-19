require 'bundler/setup'
require 'nokogiri'
require 'open-uri'

module NationalRail
  def self.scrape
    output = ""
    doc    = Nokogiri::HTML(open("http://ojp.nationalrail.co.uk/service/ldbboard/dep/OXF/PAD/To"))

    doc.css('div.results.trains .tbl-cont tbody tr').each do |row|
      cells = row.css('td')
      output << "Due: #{cells[0].content}\n"
      output << "Destination: #{cells[1].content.strip}\n"
      output << "Status: #{cells[2].content}\n"
      output << "Platform: #{cells[3].content == '' ? 'Unknown' : cells[3].content}\n"
      output << "\n"
    end

    output
  end
end

# Scrape and print to terminal only if we're directly running this
# file from the command line.
puts NationalRail.scrape if $0 == __FILE__
