require 'abbrev'

  labels = ['friendly', 'pikku']

  abbreviations = labels.abbrev

  grouped_abbreviations = abbreviations.group_by{ |abbreviation, label| label }

  label_abbreviations = grouped_abbreviations.inject( {} ) do |hash, grouped_abbrevs|
    label = grouped_abbrevs[0]
    abbrevs = grouped_abbrevs[1].map{|a| a[0]}
    hash.merge( label => abbrevs )
  end

  short_abbreviations = label_abbreviations.inject( {} ) do |hash, label_abbrevs|
    label = label_abbrevs[ 0 ]
    abbrevs = label_abbrevs[ 1 ]
    shortest_abbrev = abbrevs.sort_by{ |abbrev| abbrev.length }[ 0 ]
     hash.merge( label => shortest_abbrev.upcase )
   end

puts label_abbreviations
puts short_abbreviations
