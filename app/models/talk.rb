class Talk < ActiveRecord::Base
  
  has_many :speaker_talks
  has_many :speakers, through: :speaker_talks
  has_one :biography
  
  def self.call_talks
    # `all` can be limited by scopes chained in prior to invocation of `call_talks`
    Talk.all.each do |talk|
      talk.call_first_speaker
    end
  end
  
  def call_first_speaker
    speaker = speakers.first
    if speaker
      speaker.call_talk
    end
  end
end
