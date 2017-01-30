PREFIX owl: <http://www.w3.org/2002/07/owl#>
Prefix xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX he: <http://www.snik.eu/ontology/he/>
PREFIX meta: <http://www.snik.eu/ontology/meta/>
PREFIX ov: <http://open.vocab.org/terms/>

Create View Template test As
  Construct {
    ?s  a owl:Class;
        meta:subTopClass ?st;
        rdfs:label ?lde, ?len;
        skos:altLabel ?lade, ?laden;
        ?p ?o;
        he:page ?pd;
        skos:definition ?d;
        he:chapter ?ch.

        <http://www.snik.eu/ontology/he> ov:defines ?s.

    ?s rdfs:subClassOf ?r.
 
   ?r a                         owl:Restriction;
      owl:onProperty            ?rp;
      ?rt                       ?ro.

}
  
With
    ?s = uri(he:, ?SubjektUri)
    ?st = uri(meta:, ?Subjekttyp)
    ?lde = plainLiteral(?SubjDe,"de")
    ?len = plainLiteral(?SubjEn,"en")
    ?lade = plainLiteral(?SubjAltDe,"de")
    ?laen = plainLiteral(?SubjAltEn,"en")
    ?p = uri(?Relation)
    ?o = uri(he:,?Objekt)
    ?pr = typedLiteral(?SeiteRelation,xsd:positiveInteger)
    ?d = plainLiteral(?Definition,"de")
    ?pd = typedLiteral(?SeiteDefinition,xsd:positiveInteger)
    ?ch = uri(he:,?Kapitel)

    ?r = BNODE(?rowId)
    ?rp = uri(?RestrictionOnProperty)
    ?ro = uri(he:,?RestrictionObject)
    ?rt = uri(owl:,?RestrictionType)
