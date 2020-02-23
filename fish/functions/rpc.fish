function rpc
	set WD (mktemp -d)
echo $WD
set REP_CHARTS $HOME/src/onna/ops-team/scripts/replicated-deploy
onnatoreplicated -b $REP_CHARTS -o $WD
set RELEASE (replicated --token 6f5eb59cb7ecdec5dc46abfb0214533e6199ad453d18a63eb68303e87cb600ea --app onna-kots release create --yaml-dir $WD)
set RELEASE (echo $RELEASE | cut -f2 -d " ")
replicated --token 6f5eb59cb7ecdec5dc46abfb0214533e6199ad453d18a63eb68303e87cb600ea --app onna-kots release promote $RELEASE e_gfL0wfN9M20ZfZdtqD159Ob2t_lCMc --version 0.1.$RELEASE
end
