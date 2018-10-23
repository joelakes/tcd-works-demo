# JL : created 23/10/2018
class BibliographicWork < ActiveFedora::Base
  include Hydra::Works::WorkBehavior
  property :title, predicate: ::RDF::Vocab::DC.title, multiple: false
  property :author, predicate: ::RDF::Vocab::DC.creator, multiple: false
  property :abstract, predicate: ::RDF::Vocab::DC.abstract, multiple: false
end
