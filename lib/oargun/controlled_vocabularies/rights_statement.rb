module Oargun::ControlledVocabularies
  class RightsStatement < ActiveTriples::Resource
    include Oargun::RDF::Controlled

    configure :rdf_label => RDF::DC11.title

    use_vocabulary :rights
    use_vocabulary :eurights
    use_vocabulary :cclicenses
    use_vocabulary :ccpublic

  end
end
