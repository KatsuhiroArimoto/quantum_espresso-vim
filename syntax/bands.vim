" Vim syntax file
" Language: Quantum Espresso
" Maintainer: Leandro Seixas Rocha <seixasle@gmail.com>, Katsuhiro Arimoto <75106395+KatsuhiroArimoto@users.noreply.github.com>
" Last Change: 2024 Oct 21

" Name Descriptor
syntax keyword espressoNameDesc BANDS

" BANDS namelist
syntax keyword espressoKey prefix nextgroup=espressoString
syntax keyword espressoKey outdir nextgroup=espressoString
syntax keyword espressoKey filband nextgroup=espressoString
syntax keyword espressoKey spin_component nextgroup=espressoNumber
syntax match espressoKey 'lsigma(\([1-3]\))' nextgroup=espressoBoolean
syntax keyword espressoKey lp nextgroup=espressoBoolean
syntax keyword espressoKey filp nextgroup=espressoString
syntax keyword espressoKey lsym nextgroup=espressoBoolean
syntax keyword espressoKey no_overlap nextgroup=espressoBoolean
syntax keyword espressoKey plot_2d nextgroup=espressoBoolean
