# Module that can be included (mixin) to take and output TSV data
module TsvBuddy
    # take_tsv: converts a String with TSV data into @data
    # parameter: tsv - a String in TSV format
    def take_tsv(tsv)
  	    @data = []
  	    lines = tsv.split("\n")
  	    titles = lines[0].chomp.split("\t")
  	    lines.each do |line|
            data = line.chomp.split("\t")
            @data << Hash[titles.zip(data)]
        end
	  end

    # to_tsv: converts @data into tsv string
    # returns: String in TSV format
    def to_tsv
        str = @data[0].keys.join("\t")+"\n"
        @data.each do |student|
            str += student.values.join("\t")+"\n"
        end
        str
    end
end
