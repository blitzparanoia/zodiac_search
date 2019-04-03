class ZodiacSearch::Signs

  def self.list
    puts %q{ Info here:
    Aries: The Ram (Mar 21-Apr 19)
    Taurus: The Bull (Apr 20-May 20)
    Gemini: The Twins (May 21-Jun 20)
    Cancer: The Crab (June 21-July 22)
    Leo: The Lion (July 23-Aug 22)
    Virgo: The Virgin (Aug 23-Sep 22)
    Libra: The Scales (Sep 23-Oct 22)
    Scorpio: The Scorpion (Oct 23-Nov 21)
    Sagittarius: The Archer (Nov 22-Dec 21)
    Capricorn: The Goat (Dec 22-Jan 19)
    Aquarius: The Water Bearer (Jan 20-Feb 18)
    Pisces: The Fish (Feb 19-Mar 20)}
  end

#working potential methods and info to scrape
  sign_1 = self.new #create
  sign_1.name = "Aries" #name of sign
  sign_1.dates = "Mar 21-Apr 19"#date range of sign
  sign_1.represent_by = "The Ram"#representation
  sign_1.traits = "Coming Soon" #traits observed


end
