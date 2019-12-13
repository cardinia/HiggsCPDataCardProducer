#!/bin/sh

APPLY_FF="true"
USE_EMBEDDED="true"


root -l -b -q `printf 'ProduceDataCards.C(-1,2017,0,0,21,%s,%s,"/nfs/dust/cms/user/cardinia/HtoTauTau/HiggsCP/DNN/CMSSW_10_2_16/src/HiggsCP/Outputs/test_1S_3B/NTuples_mt_2017/predictions_2017/")' $USE_EMBEDDED $APPLY_FF`
root -l -b -q `printf 'ProduceDataCards.C(-1,2017,1,1,21,%s,%s,"/nfs/dust/cms/user/cardinia/HtoTauTau/HiggsCP/DNN/CMSSW_10_2_16/src/HiggsCP/Outputs/test_1S_3B/NTuples_mt_2017/predictions_2017/")' $USE_EMBEDDED $APPLY_FF`

root -l -b -q AddDataCards.C

mv CombinedDataCard.root shapes/DESY/CP/test_cp/2017/htt_mt.inputs-sm-13TeV-2D.root