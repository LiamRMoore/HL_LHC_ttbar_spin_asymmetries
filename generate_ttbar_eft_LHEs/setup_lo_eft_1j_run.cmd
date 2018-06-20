# use as:  ./bin/madevent setup_100k_events_umeps.cmd
#
# move to card editing mode (configure run, but don't generate events yet)
edit_cards
# set auto-shower off so can run pythia separately
shower=OFF
# set detector sim off
detector=OFF
# set madanalysis off
analysis=OFF
# set reweight on so can regenerate samples with varied param choices
reweight=ON
# move to editing param/runcards
done
#
set run_tag tt_dim6_100k
# set 100k unweighted_events
set nevents 100000
# fixed ren/fac scales (for UMEPS merging)
set fixed_ren_scale True
set fixed_fac_scale True
# turn off systematics studies (will use NLO systematics from NLO SM later)
set use_syst False
# will do CKKW-L/UMEPS merging, so switch off ickkw in run_card to 0 (see e.g. 'Merging in Madgraph 5 and Pythia 8, a brief overview')
set ickkw 0
#  no minimum relative parton kT cut at matrix element level (MLM only)
set xqcut 0
# minimum jet pt to < the UMEPS merging scale (15 GeV) http://home.thep.lu.se/Pythia/pythia82html/UMEPSMerging.html
set ptj 5
# exit setting up Cards
done
