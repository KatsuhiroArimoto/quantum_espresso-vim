" Vim syntax file
" Language: Quantum Espresso
" Maintainer: Leandro Seixas Rocha <seixasle@gmail.com>, Katsuhiro Arimoto <75106395+KatsuhiroArimoto@users.noreply.github.com>
" Last Change: 2024 Oct 21

" Name Descriptor
syntax keyword espressoNameDesc INPUTPP

" INPUTPP namelist
syntax keyword espressoKey prefix nextgroup=espressoString
syntax keyword espressoKey outdir nextgroup=espressoString
syntax keyword espressoKey seedname nextgroup=espressoString
syntax keyword espressoKey spin_component nextgroup=espressoString
syntax keyword espressoKey wan_mode nextgroup=espressoString
syntax keyword espressoKey write_unk nextgroup=espressoBoolean
syntax keyword espressoKey reduce_unk nextgroup=espressoBoolean
syntax keyword espressoKey reduce_unk_factor nextgroup=espressoNumber
syntax keyword espressoKey wvfn_formatted nextgroup=espressoBoolean
syntax keyword espressoKey write_amn nextgroup=espressoBoolean
syntax keyword espressoKey scdm_proj nextgroup=espressoBoolean
syntax keyword espressoKey scdm_entanglement nextgroup=espressoString
syntax keyword espressoKey scdm_mu nextgroup=espressoNumber
syntax keyword espressoKey scdm_sigma nextgroup=espressoNumber
syntax keyword espressoKey atom_proj nextgroup=espressoBoolean
syntax match espressoKey 'atom_proj_exclude(\([1-9][0-9]*\))' nextgroup=espressoNumber
syntax keyword espressoKey atom_proj_ext nextgroup=espressoBoolean
syntax keyword espressoKey atom_proj_dir nextgroup=espressoString
syntax keyword espressoKey atom_proj_ortho nextgroup=espressoBoolean
syntax keyword espressoKey write_mmn nextgroup=espressoBoolean
syntax keyword espressoKey write_spn nextgroup=espressoBoolean
syntax keyword espressoKey spn_formatted nextgroup=espressoBoolean
syntax keyword espressoKey write_uHu nextgroup=espressoBoolean
syntax keyword espressoKey uHu_formatted nextgroup=espressoBoolean
syntax keyword espressoKey write_uIu nextgroup=espressoBoolean
syntax keyword espressoKey uIu_formatted nextgroup=espressoBoolean
syntax keyword espressoKey write_sHu nextgroup=espressoBoolean
syntax keyword espressoKey sHu_formatted nextgroup=espressoBoolean
syntax keyword espressoKey write_sIu nextgroup=espressoBoolean
syntax keyword espressoKey sIu_formatted nextgroup=espressoBoolean
syntax keyword espressoKey write_unkg nextgroup=espressoBoolean
syntax keyword espressoKey irr_bz nextgroup=espressoBoolean
syntax keyword espressoKey write_dmn nextgroup=espressoBoolean
syntax keyword espressoKey read_sym nextgroup=espressoBoolean
