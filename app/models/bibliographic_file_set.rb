# JL : created 23/10/2018
class BibliographicFileSet < ActiveFedora::Base
  include Hydra::Works::FileSetBehavior
  property :title, predicate: ::RDF::Vocab::DC.title, multiple: false  do |index|
    index.as :stored_searchable
  end

  def page?
    false
  end

end
