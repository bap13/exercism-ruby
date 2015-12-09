# RNA Transcription. A program that takes a DNA nucleotide sequence and
# returns its RNA complement.

class Complement
  VERSION = 2

  def self.of_dna(dna)
    fail ArgumentError unless dna.match('^[GCTA]+$')
    dna.gsub(/[GCTA]/, 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
  end

  def self.of_rna(rna)
    fail ArgumentError unless rna.match('^[GCUA]+$')
    rna.gsub(/[GCUA]/, 'G' => 'C', 'C' => 'G', 'U' => 'A', 'A' => 'T')
  end
end
