class Prefix
    attr_reader :prefixes
  
    def initialize()
      @prefixes = {}
    end
  
    def add_prefixes(*prefs)
      prefs.each do |p|
        @prefixes[p] = [] unless @prefixes.has_key?(p)
      end
    end
  
    def add_words(*words)
      words.each do |w|
        @prefixes[@prefixes.keys.find { |k| w.start_with?(k) }] << w
      end
    end
  
    def sort
      @prefixes = @prefixes.sort.to_h
      @prefixes.values.each(&:sort!)
    end
end

prefix_list = Prefix.new
prefix_list.add_prefixes("auto", "aqua", "amphi")
prefix_list.add_words("automate", "automobile", "automotive", "amphibian", "aquarium")
prefix_list.sort

puts prefix_list.prefixes

=begin RESULT

{
    "amphi"=>["amphibian"], 
    "aqua"=>["aquarium"], 
    "auto"=>["automate", "automobile", "automotive"]
}

=end