import model dim6top_LO_UFO
generate p p > t t~ QED=0 DIM6=2, (t > w+ b DIM6=0 FCNC=0, w+ > l+ vl DIM6=0 FCNC=0), (t~ > w- b~ DIM6=0 FCNC=0, w- > l- vl~ DIM6=0 FCNC=0) @0
add process p p > t t~ j QED=0 DIM6=2, (t > w+ b DIM6=0 FCNC=0, w+ > l+ vl DIM6=0 FCNC=0), (t~ > w- b~ DIM6=0 FCNC=0, w- > l- vl~ DIM6=0 FCNC=0) @1
output ttbar_dim6_dilepton
#
# for dilepton need to merge separate charged final states
# http://home.thep.lu.se/Pythia/pythia82html/CKKWLMerging.html#Definingthehardprocess
# (LEPTONS/NEUTRINOS/BQUARKS containers won't cover both lepton charges since jets in ME final state)
#
generate p p > t t~ QED=0 DIM6=2, (t > w+ b DIM6=0 FCNC=0, w+ > j j DIM6=0 FCNC=0), (t~ > w- b~ DIM6=0 FCNC=0, w- > l- vl~ DIM6=0 FCNC=0) @0
add process p p > t t~ j QED=0 DIM6=2, (t > w+ b DIM6=0 FCNC=0, w+ > j j DIM6=0 FCNC=0), (t~ > w- b~ DIM6=0 FCNC=0, w- > l- vl~ DIM6=0 FCNC=0) @1
output ttbar_dim6_semileptonic_neg
generate p p > t t~ QED=0 DIM6=2, (t > w+ b DIM6=0 FCNC=0, w+ > l+ vl DIM6=0 FCNC=0), (t~ > w- b~ DIM6=0 FCNC=0, w- > j j DIM6=0 FCNC=0) @0
add process p p > t t~ j QED=0 DIM6=2, (t > w+ b DIM6=0 FCNC=0, w+ > l+ vl DIM6=0 FCNC=0), (t~ > w- b~ DIM6=0 FCNC=0, w- > j j DIM6=0 FCNC=0) @1
output ttbar_dim6_semileptonic_pos
