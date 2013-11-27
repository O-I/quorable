require 'spec_helper'

describe Quorable do
  describe '.feed' do
    before do
      stub_request(:get, "http://www.quora.com/Music").
         with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
         to_return(:status => 200, :body => fixture('sample_topic_response.rb'), :headers => {})
    end
    it 'returns an array of 10 or fewer paths to the Quora topic provided' do
      expect(Quorable.feed('music')).to eq []
    end
  end

  describe '.parameterize' do
    it 'parameterizes a word' do
      result = Quorable.parameterize('happy days')
      expect(result).to eq 'Happy-Days'
    end
  end
end