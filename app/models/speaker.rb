class Speaker < ActiveRecord::Base
  
  has_many :speaker_talks
  has_many :talks, through: :speaker_talks
  
  def call_talk
    puts "== `Talk.all` in `Speaker#call_talk` includes the conditions received by Talk.call_talks:"
    puts Talk.all.to_sql 
    puts
    puts "== we can opt-out of this behavior via `unscoped`:"
    puts Talk.unscoped.all.to_sql
  end
end
