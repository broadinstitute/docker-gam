#!/bin/sh

echo "Adding BITS calendar to all bits group members..."
./gam group bits-all@broadinstitute.org add calendar broadinstitute.com_5tpq5qeidntrt7teesabug75rg@group.calendar.google.com hidden false

echo "Adding Broad Institute calendar to all activebroadies group members..."
./gam group activebroadies@broadinstitute.org add calendar broadinstitute.com_qgfmvoepcpsfkslo4e146ntt4s@group.calendar.google.com selected true hidden false colorindex 16

