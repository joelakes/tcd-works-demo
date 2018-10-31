# JL : created 23/10/2018
class BibliographicWork < ActiveFedora::Base
  include Hydra::Works::WorkBehavior
  filters_association :members, as: :pages, condition: :page?
  property :title, predicate: ::RDF::Vocab::DC.title, multiple: false  do |index|
    index.as :stored_searchable
  end
  property :author, predicate: ::RDF::Vocab::DC.creator, multiple: false  do |index|
    index.as :stored_searchable
  end
  property :abstract, predicate: ::RDF::Vocab::DC.abstract, multiple: false  do |index|
    index.as :stored_searchable
  end

  def page?
    false
  end

end
