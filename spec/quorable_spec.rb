require 'spec_helper'

describe Quorable do
  describe '.feed' do
    before do
      stub_request(:get, "http://www.quora.com/Music").
         with(headers: {'Accept'=>'*/*',
             'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
             'User-Agent'=>'Ruby'}).
         to_return(status: 200,
                   body: fixture('music.html'),
                   headers: {})
    end
    it 'returns an array of 10 or fewer paths to the Quora topic provided' do
      expect(Quorable.feed('music')).to eq ["http://www.quora.com/Needs-Attention/Whats-your-take-on-controversial-music-or-performances-Gangnam-style-what-does-the-fox-say-and-wrecking-ball-Pure-attention-seeking-or-with-creative-intent", "http://www.quora.com/Music/Does-music-have-a-real-practical-use", "http://www.quora.com/Music/What-is-the-name-of-the-music-used-at-the-start-of-this-video", "http://www.quora.com/Rap-Music-1/Why-do-some-educated-and-cultured-people-like-rap", "http://www.quora.com/Live-Music/How-does-a-performance-change-when-going-from-a-small-venue-to-a-much-larger-venue", "http://www.quora.com/Copyright-Law/What-constitute-music-copyright-infringement", "http://www.quora.com/Artwork/What-is-the-most-underrated-piece-of-art-and-why", "http://www.quora.com/Music/Why-would-you-support-a-home-grown-music-talent"]
    end
  end

  describe '.parameterize' do
    it 'parameterizes a word' do
      result = Quorable.parameterize('happy days')
      expect(result).to eq 'Happy-Days'
    end
  end
end