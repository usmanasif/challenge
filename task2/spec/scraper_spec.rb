require 'spec_helper'

describe 'NationalRail.scrape' do
  it 'scrapes and outputs the next trains', vcr: { cassette_name: "scraper", record: :none } do
    expected = File.read(File.expand_path('../expected.txt', __FILE__))
    expect(NationalRail.scrape).to eq(expected)
  end
end
