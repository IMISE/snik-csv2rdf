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
* installed [tarql](https://tarql.github.io/) and [rapper](http://librdf.org/raptor/rapper.html)
* the source CSV files you want to convert, some of them are contained in a [release](https://github.com/IMISE/snik-csv2rdf/releases). Some small files are already saved in the repository.

## Steps

1. Download the current source files for the books you want to convert and place them in a subfolder, for example he for Heinrich. You need ontology.ttl, which contains metadata and main.csv, which contains almost all of the actual data. If main.csv is missing, the directory is skipped. Optionally, you can define instances in instance.csv and properties that are not in the metamodel in property.csv. Some small source files are already contained in the repository.
2. Run `map`, if there is an error with your directory or the final test is not successful, fix the source files and run map again until it completes successfully.
3. Upload the resulting ntriples files (1 per directory/source) in the [SNIK SPARQL endpoint conductor](https://www.snik.eu/conductor) (credentials required). Make sure to provide the correct graph name (http://www.snik.eu/ontology/<abbreviation>) and to clear that graph first. Only clear and upload a graph that has not been released for editing yet because this will undo all edits and potentially destroy large amounts of work.
4. Regularily generate virtual triples using the [SPARQL query](https://github.com/IMISE/snik-ontology/blob/master/sparql/construct_virtual_triples_and_missing.sparql.txt) and clear and update the graph http://www.snik.eu/ontology/virtual with the result.
