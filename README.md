# SNIK-CSV2RDF
Transformation of the SNIK CSV tables to RDF/OWL

## Background

The SNIK project converts textbooks about hospital information management to an OWL/RDF ontology and offers tools to view, analyze and edit this ontology. See http://snik.eu/ for a complete tool overview.
This repository contains the scripts used to convert CSV tables, that are created by domain experts working for SNIK.
For specifics about the extraction process that preceedes this step and to download the current extraction table template, see the [IMISE Wiki](https://wiki.imise.uni-leipzig.de/Projekte/SNIK/ontologie/extraktion?v=ph4) (German).
After a file is converted to RDF, it gets uploaded to the [SNIK SPARQL Endpoint](http://www.snik.eu/sparql) and all changes are made at that endpoint.
No further changes to the extraction tables or the resulting RDF file will have any effect on the data that is online.


## Requirements

* Linux
* the source CSV files you want to convert, some of them are contained in a [release](https://github.com/IMISE/snik-csv2rdf/releases)
