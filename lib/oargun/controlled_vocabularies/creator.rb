module Oargun::ControlledVocabularies
  class Creator < ActiveTriples::Resource
    include Oargun::RDF::Controlled

    use_vocabulary :lcnames
    # use_vocabulary :creator
    use_vocabulary :dummycreator

    def initialize(*args)
      args[0] = assign_subject(args.first) unless args.first.to_s.start_with?("http")
      super
      if @new_label
        self << RDF::Statement.new(rdf_subject, RDF::SKOS.prefLabel, @new_label)
        @new_label = nil
        persist!
      end
    end

    def assign_subject(string)
      string = string.to_s
      new_subject = string.gsub(" ", "").gsub(/[^A-z]/,'').camelize
      new_subject = Oargun::Vocabularies::DUMMYCREATOR.send(new_subject).to_s
      @new_label = string
      new_subject
    end

    class QaLcNames < Qa::Authorities::Loc
      include Oargun::Qa::Caching
      def search(q, sub_authority=nil)
        super(q, 'names')
      end
    end

    @qa_interface = QaLcNames.new

  end
end
