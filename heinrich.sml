PREFIX owl: <http://www.w3.org/2002/07/owl#>
Prefix xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX he: <http://www.snik.eu/ontology/he/>
PREFIX meta: <http://www.snik.eu/ontology/meta/>

Create View Template test As
  Construct {
    ?s  a owl:Class;
        rdfs:label ?lde;
        rdfs:label ?len;
        skos:altLabel ?lade;
        skos:altLabel ?laen;
  }
  
With
    ?s = uri(he:, ?SubjektUri)
    ?lde = plainLiteral(?SubjDe,"de")
    ?len = plainLiteral(?SubjEn,"en")
    ?lade = plainLiteral(?SubjAltDe,"de")
    ?laen = plainLiteral(?SubjAltEn,"en")

