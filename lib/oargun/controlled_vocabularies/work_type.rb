require 'rdf-vocab'
module Oargun::ControlledVocabularies
  class WorkType < ActiveTriples::Resource
    include LinkedVocabs::Controlled
    include Oargun::RDF::DeepIndex

    use_vocabulary :aat, class: Oargun::Vocabularies::AAT
    use_vocabulary :ldp, class: ::RDF::Vocab::LDP
    # use_vocabulary :worktype
    use_vocabulary :lcsh, class: Oargun::Vocabularies::LCSH

  end
end
