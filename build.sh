#!/usr/bin/env bash
set -euf -o pipefail
ls -l | column -t
#afafdsafas
echo "it works"

# Compute number of sequences per specimen
csvuniq -zc specimen,species,location data/sfv.csv > output/seqs_per_specimen.csv
# Also use them to count specimens by species and location
csvuniq -zc species,location output/seqs_per_specimen.csv > output/specs_per_species_location.csvcsvuniq -zc species data/sfv.csv > output/seqs_per_species.csv
# Also use them to count specimens by species and location
csvuniq -zc species,location output/seqs_per_specimen.csv > output/specs_per_species_location.csv
