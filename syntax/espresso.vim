" Vim syntax file
" Language: Quantum Espresso
" Maintainer: Leandro Seixas Rocha <seixasle@gmail.com>, Katsuhiro Arimoto <75106395+KatsuhiroArimoto@users.noreply.github.com>
" Last Change: 2024 Oct 21

if exists('b:current_syntax')
    finish
endif

" Comment
syntax keyword espressoTODO contained TODO FIXME XXX NOTE
syntax match espressoComment '!.*$'

" Integer with +,- or nothing in front
syntax match espressoNumber '\d\+'
syntax match espressoNumber '[-+]\d\+'

" Floating number
syntax match espressoNumber '\d\+.\d*'
syntax match espressoNumber '[-+]\d\+.\d*'
syntax match espressoNumber '[-+]\=\d[[:digit:]]*[dD][\-+]\=\d\+'
syntax match espressoNumber '\d[[:digit:]]*[dD][\-+]\=\d\+'
syntax match espressoNumber '[-+]\=\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'
syntax match espressoNumber '\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'

" String
syntax region espressoString start="'" end="'"

" Boolean value (.true. /.false.)
syntax match espressoBoolean '\.[tT][rR][uU][eE]\.'
syntax match espressoBoolean '\.[fF][aA][lL][sS][eE]\.'
" Name Descriptor
syntax keyword espressoNameDesc CONTROL SYSTEM ELECTRONS IONS CELL FCP RISM

" CONTROL namelist
syntax keyword espressoKey calculation nextgroup=espressoString
syntax keyword espressoKey title nextgroup=espressoString
syntax keyword espressoKey verbosity nextgroup=espressoString
syntax keyword espressoKey restart_mode nextgroup=espressoString
syntax keyword espressoKey wf_collect nextgroup=espressoBoolean
syntax keyword espressoKey nstep nextgroup=espressoNumber
syntax keyword espressoKey iprint nextgroup=espressoNumber
syntax keyword espressoKey tstress nextgroup=espressoBoolean
syntax keyword espressoKey tprnfor nextgroup=espressoBoolean
syntax keyword espressoKey dt nextgroup=espressoNumber
syntax keyword espressoKey outdir nextgroup=espressoString
syntax keyword espressoKey wfcdir nextgroup=espressoString
syntax keyword espressoKey prefix nextgroup=espressoString
syntax keyword espressoKey lkpoint_dir nextgroup=espressoBoolean
syntax keyword espressoKey max_seconds nextgroup=espressoNumber
syntax keyword espressoKey etot_conv_thr nextgroup=espressoNumber
syntax keyword espressoKey forc_conv_thr nextgroup=espressoNumber
syntax keyword espressoKey disk_io nextgroup=espressoString
syntax keyword espressoKey pseudo_dir nextgroup=espressoString
syntax keyword espressoKey tefield nextgroup=espressoBoolean
syntax keyword espressoKey dipfield nextgroup=espressoBoolean
syntax keyword espressoKey lelfield nextgroup=espressoBoolean
syntax keyword espressoKey nberrycyc nextgroup=espressoNumber
syntax keyword espressoKey lorbm nextgroup=espressoBoolean
syntax keyword espressoKey lberry nextgroup=espressoBoolean
syntax keyword espressoKey gdir nextgroup=espressoNumber
syntax keyword espressoKey nppstr nextgroup=espressoNumber
syntax keyword espressoKey gate nextgroup=espressoBoolean
syntax keyword espressoKey twochem nextgroup=espressoBoolean
syntax keyword espressoKey lfcp nextgroup=espressoBoolean
syntax keyword espressoKey trism nextgroup=espressoBoolean

" SYSTEM namelist
syntax keyword espressoKey ibrav nextgroup=espressoNumber
syntax match espressoKey 'celldm(\([1-6]\))' nextgroup=espressoNumber
syntax keyword espressoKey nat nextgroup=espressoNumber
syntax keyword espressoKey ntyp nextgroup=espressoNumber
syntax keyword espressoKey nbnd nextgroup=espressoNumber
syntax keyword espressoKey nbnd_cond nextgroup=espressoNumber
syntax keyword espressoKey tot_charge nextgroup=espressoNumber
syntax match espressoKey 'starting_charge(\([1-9][0-9]*\))' nextgroup=espressoNumber
syntax keyword espressoKey tot_magnetization nextgroup=espressoNumber
syntax match espressoKey 'starting_magnetization(\([1-9][0-9]*\))' nextgroup=espressoNumber
syntax keyword espressoKey ecutwfc nextgroup=espressoNumber
syntax keyword espressoKey ecutrho nextgroup=espressoNumber
syntax keyword espressoKey ecutfock nextgroup=espressoNumber
syntax keyword espressoKey nosym nextgroup=espressoBoolean
syntax keyword espressoKey nosym_evc nextgroup=espressoBoolean
syntax keyword espressoKey noinv nextgroup=espressoBoolean
syntax keyword espressoKey no_t_rev nextgroup=espressoBoolean
syntax keyword espressoKey force_symmorphic nextgroup=espressoBoolean
syntax keyword espressoKey use_all_frac nextgroup=espressoBoolean
syntax keyword espressoKey occupations nextgroup=espressoString
syntax keyword espressoKey one_atom_occupations nextgroup=espressoBoolean
syntax keyword espressoKey starting_spin_angle nextgroup=espressoBoolean
syntax keyword espressoKey degauss_cond nextgroup=espressoNumber
syntax keyword espressoKey nelec_cond nextgroup=espressoNumber
syntax keyword espressoKey degauss nextgroup=espressoNumber
syntax keyword espressoKey smearing nextgroup=espressoString
syntax keyword espressoKey nspin nextgroup=espressoNumber
syntax keyword espressoKey sic_gamma nextgroup=espressoNumber
syntax keyword espressoKey pol_type nextgroup=espressoString
syntax keyword espressoKey sic_energy nextgroup=espressoBoolean
syntax keyword espressoKey sci_vb nextgroup=espressoNumber
syntax keyword espressoKey sci_cb nextgroup=espressoNumber
syntax keyword espressoKey noncolin nextgroup=espressoBoolean
syntax keyword espressoKey ecfixed nextgroup=espressoNumber
syntax keyword espressoKey qcutz nextgroup=espressoNumber
syntax keyword espressoKey q2sigma nextgroup=espressoNumber
syntax keyword espressoKey input_dft nextgroup=espressoString
syntax keyword espressoKey ace nextgroup=espressoBoolean
syntax keyword espressoKey exx_fraction nextgroup=espressoNumber
syntax keyword espressoKey screening_parameter nextgroup=espressoNumber
syntax keyword espressoKey exxdiv_treatment nextgroup=espressoString
syntax keyword espressoKey x_gamma_extrapolation nextgroup=espressoBoolean
syntax keyword espressoKey ecutvcut nextgroup=espressoNumber
syntax keyword espressoKey localization_thr nextgroup=espressoNumber
syntax match espressoKey 'Hubbard_occ(\([1-9][0-9]*,*[1-3]\))' nextgroup=espressoNumber
syntax match espressoKey 'Hubbard_alpha(\([1-9][0-9]*\))' nextgroup=espressoNumber
syntax match espressoKey 'Hubbard_beta(\([1-9][0-9]*\))' nextgroup=espressoNumber
syntax match espressoKey 'starting_ns_eigenvalue(\([1-9][0-9]*,*[1-9][0-9]*,*[1-9][0-9]*\))' nextgroup=espressoNumber
syntax keyword espressoKey dmft nextgroup=espressoBoolean
syntax keyword espressoKey dmft_prefix nextgroup=espressoString
syntax keyword espressoKey ensemble_energies nextgroup=espressoBoolean
syntax keyword espressoKey edir nextgroup=espressoNumber
syntax keyword espressoKey emaxpos nextgroup=espressoNumber
syntax keyword espressoKey eopreg nextgroup=espressoNumber
syntax keyword espressoKey eamp nextgroup=espressoNumber
syntax match espressoKey 'angle1(\([1-9][0-9]*\))' nextgroup=espressoNumber
syntax match espressoKey 'angle2(\([1-9][0-9]*\))' nextgroup=espressoNumber
syntax keyword espressoKey lforcet nextgroup=espressoBoolean
syntax keyword espressoKey constrained_magnetization nextgroup=espressoString
syntax match espressoKey 'fixed_magnetization(\([1-3]\))' nextgroup=espressoNumber
syntax keyword espressoKey lambda nextgroup=espressoNumber
syntax keyword espressoKey report nextgroup=espressoNumber
syntax keyword espressoKey lspinorb nextgroup=espressoBoolean
syntax keyword espressoKey assume_isolated nextgroup=espressoString
syntax keyword espressoKey esm_bc nextgroup=espressoString
syntax keyword espressoKey esm_w nextgroup=espressoNumber
syntax keyword espressoKey esm_efield nextgroup=espressoNumber
syntax keyword espressoKey esm_nfit nextgroup=espressoNumber
syntax keyword espressoKey lgcscf nextgroup=espressoBoolean
syntax keyword espressoKey gcscf_mu nextgroup=espressoNumber
syntax keyword espressoKey gcscf_conv_thr nextgroup=espressoNumber
syntax keyword espressoKey gcscf_beta nextgroup=espressoNumber
syntax keyword espressoKey vdw_corr nextgroup=espressoString
syntax keyword espressoKey london nextgroup=espressoBoolean
syntax keyword espressoKey london_s6 nextgroup=espressoNumber
syntax match espressoKey 'london_c6(\([1-9][0-9]*\))' nextgroup=espressoNumber
syntax match espressoKey 'london_rvdw(\([1-9][0-9]*\))' nextgroup=espressoNumber
syntax keyword espressoKey london_rcut nextgroup=espressoNumber
syntax keyword espressoKey dftd3_version nextgroup=espressoNumber
syntax keyword espressoKey dftd3_threebody nextgroup=espressoBoolean
syntax keyword espressoKey ts_vdw_econv_thr nextgroup=espressoNumber
syntax keyword espressoKey ts_vdw_isolated nextgroup=espressoBoolean
syntax keyword espressoKey xdm nextgroup=espressoBoolean
syntax keyword espressoKey xdm_a1 nextgroup=espressoNumber
syntax keyword espressoKey xdm_a2 nextgroup=espressoNumber
syntax keyword espressoKey space_group nextgroup=espressoNumber
syntax keyword espressoKey uniqueb nextgroup=espressoBoolean
syntax keyword espressoKey origin_choice nextgroup=espressoNumber
syntax keyword espressoKey rhombohedral nextgroup=espressoBoolean
syntax keyword espressoKey zgate nextgroup=espressoNumber
syntax keyword espressoKey relaxz nextgroup=espressoBoolean
syntax keyword espressoKey block nextgroup=espressoBoolean
syntax keyword espressoKey block_1 nextgroup=espressoNumber
syntax keyword espressoKey block_2 nextgroup=espressoNumber
syntax keyword espressoKey block_height nextgroup=espressoNumber
syntax keyword espressoKey nextffield nextgroup=espressoNumber

" ELECTRONS namelist
syntax keyword espressoKey electron_maxstep nextgroup=espressoNumber
syntax keyword espressoKey exx_maxstep nextgroup=espressoNumber
syntax keyword espressoKey scf_must_converge nextgroup=espressoBoolean
syntax keyword espressoKey conv_thr nextgroup=espressoNumber
syntax keyword espressoKey adaptive_thr nextgroup=espressoBoolean
syntax keyword espressoKey conv_thr_init nextgroup=espressoNumber
syntax keyword espressoKey conv_thr_multi nextgroup=espressoNumber
syntax keyword espressoKey mixing_mode nextgroup=espressoString
syntax keyword espressoKey mixing_beta nextgroup=espressoNumber
syntax keyword espressoKey mixing_ndim nextgroup=espressoNumber
syntax keyword espressoKey mixing_fixed_ns nextgroup=espressoNumber
syntax keyword espressoKey diagonalization nextgroup=espressoString
syntax keyword espressoKey diago_thr_init nextgroup=espressoNumber
syntax keyword espressoKey diago_cg_maxiter nextgroup=espressoNumber
syntax keyword espressoKey diago_ppcg_maxiter nextgroup=espressoNumber
syntax keyword espressoKey diago_david_ndim nextgroup=espressoNumber
syntax keyword espressoKey diago_rmm_ndim nextgroup=espressoNumber
syntax keyword espressoKey diago_rmm_conv nextgroup=espressoBoolean
syntax keyword espressoKey diago_gs_nblock nextgroup=espressoNumber
syntax keyword espressoKey diago_full_acc nextgroup=espressoBoolean
syntax keyword espressoKey efield nextgroup=espressoNumber
syntax match espressoKey 'efield_cart(\([1-3]\))' nextgroup=espressoNumber
syntax keyword espressoKey efield_phase nextgroup=espressoString
syntax keyword espressoKey startingpot nextgroup=espressoString
syntax keyword espressoKey startingwfc nextgroup=espressoString
syntax keyword espressoKey tqr nextgroup=espressoBoolean
syntax keyword espressoKey real_space nextgroup=espressoBoolean

" IONS namelist
syntax keyword espressoKey ion_positions nextgroup=espressoString
syntax keyword espressoKey ion_velocities nextgroup=espressoString
syntax keyword espressoKey ion_dynamics nextgroup=espressoString
syntax keyword espressoKey pot_extrapolation nextgroup=espressoString
syntax keyword espressoKey wfc_extrapolation nextgroup=espressoString
syntax keyword espressoKey remove_rigid_rot nextgroup=espressoBoolean
syntax keyword espressoKey ion_temperature nextgroup=espressoString
syntax keyword espressoKey tempw nextgroup=espressoNumber
syntax keyword espressoKey tolp nextgroup=espressoNumber
syntax keyword espressoKey delta_t nextgroup=espressoNumber
syntax keyword espressoKey nraise nextgroup=espressoNumber
syntax keyword espressoKey refold_pos nextgroup=espressoBoolean
syntax keyword espressoKey upscale nextgroup=espressoNumber
syntax keyword espressoKey bfgs_ndim nextgroup=espressoNumber
syntax keyword espressoKey trust_radius_max nextgroup=espressoNumber
syntax keyword espressoKey trust_radius_min nextgroup=espressoNumber
syntax keyword espressoKey trust_radius_ini nextgroup=espressoNumber
syntax keyword espressoKey w_1 nextgroup=espressoNumber
syntax keyword espressoKey w_2 nextgroup=espressoNumber
syntax keyword espressoKey fire_alpha_init nextgroup=espressoNumber
syntax keyword espressoKey fire_falpha nextgroup=espressoNumber
syntax keyword espressoKey fire_nmin nextgroup=espressoNumber
syntax keyword espressoKey fire_f_inc nextgroup=espressoNumber
syntax keyword espressoKey fire_f_dec nextgroup=espressoNumber
syntax keyword espressoKey fire_dtmax nextgroup=espressoNumber

" CELL namelist
syntax keyword espressoKey cell_dynamics nextgroup=espressoString
syntax keyword espressoKey press nextgroup=espressoNumber
syntax keyword espressoKey wmass nextgroup=espressoNumber
syntax keyword espressoKey cell_factor nextgroup=espressoNumber
syntax keyword espressoKey press_conv_thr nextgroup=espressoNumber
syntax keyword espressoKey cell_dofree nextgroup=espressoString

" FCP namelist
syntax keyword espressoKey fcp_mu nextgroup=espressoNumber
syntax keyword espressoKey fcp_dynamics nextgroup=espressoString
syntax keyword espressoKey fcp_conv_thr nextgroup=espressoNumber
syntax keyword espressoKey fcp_ndiis nextgroup=espressoNumber
syntax keyword espressoKey fcp_mass nextgroup=espressoNumber
syntax keyword espressoKey fcp_velocity nextgroup=espressoNumber
syntax keyword espressoKey fcp_temperature nextgroup=espressoString
syntax keyword espressoKey fcp_tempw nextgroup=espressoNumber
syntax keyword espressoKey fcp_tolp nextgroup=espressoNumber
syntax keyword espressoKey fcp_delta_t nextgroup=espressoNumber
syntax keyword espressoKey fcp_nraise nextgroup=espressoNumber
syntax keyword espressoKey freeze_all_atoms nextgroup=espressoBoolean

" RISM namelist
syntax keyword espressoKey nsolv nextgroup=espressoNumber
syntax keyword espressoKey closure nextgroup=espressoString
syntax keyword espressoKey tempv nextgroup=espressoNumber
syntax keyword espressoKey ecutsolv nextgroup=espressoNumber
syntax match espressoKey 'solute_lj(\([1-9][0-9]*\))' nextgroup=espressoString
syntax match espressoKey 'solute_epsilon(\([1-9][0-9]*\))' nextgroup=espressoNumber
syntax match espressoKey 'solute_sigma(\([1-9][0-9]*\))' nextgroup=espressoNumber
syntax keyword espressoKey starting1d nextgroup=espressoString
syntax keyword espressoKey starting3d nextgroup=espressoString
syntax keyword espressoKey smear1d nextgroup=espressoNumber
syntax keyword espressoKey smear3d nextgroup=espressoNumber
syntax keyword espressoKey rism1d_maxstep nextgroup=espressoNumber
syntax keyword espressoKey rism3d_maxstep nextgroup=espressoNumber
syntax keyword espressoKey rism1d_conv_thr nextgroup=espressoNumber
syntax keyword espressoKey rism3d_conv_thr nextgroup=espressoNumber
syntax keyword espressoKey mdiis1d_size nextgroup=espressoNumber
syntax keyword espressoKey mdiis3d_size nextgroup=espressoNumber
syntax keyword espressoKey mdiis1d_step nextgroup=espressoNumber
syntax keyword espressoKey mdiis3d_step nextgroup=espressoNumber
syntax keyword espressoKey rism1d_bond_width nextgroup=espressoNumber
syntax keyword espressoKey rism1d_dielectric nextgroup=espressoNumber
syntax keyword espressoKey rism1d_molesize nextgroup=espressoNumber
syntax keyword espressoKey rism1d_nproc nextgroup=espressoNumber
syntax keyword espressoKey rism3d_conv_level nextgroup=espressoNumber
syntax keyword espressoKey rism3d_planar_average nextgroup=espressoBoolean
syntax keyword espressoKey laue_nfit nextgroup=espressoNumber
syntax keyword espressoKey laue_expand_right nextgroup=espressoNumber
syntax keyword espressoKey laue_expand_left nextgroup=espressoNumber
syntax keyword espressoKey laue_starting_right nextgroup=espressoNumber
syntax keyword espressoKey laue_starting_left nextgroup=espressoNumber
syntax keyword espressoKey laue_buffer_right nextgroup=espressoNumber
syntax keyword espressoKey laue_buffer_left nextgroup=espressoNumber
syntax keyword espressoKey laue_both_hands nextgroup=espressoBoolean
syntax keyword espressoKey laue_wall nextgroup=espressoString
syntax keyword espressoKey laue_wall_z nextgroup=espressoNumber
syntax keyword espressoKey laue_wall_rho nextgroup=espressoNumber
syntax keyword espressoKey laue_wall_epsilon nextgroup=espressoNumber
syntax keyword espressoKey laue_wall_sigma nextgroup=espressoNumber
syntax keyword espressoKey laue_wall_lj6 nextgroup=espressoBoolean

syntax region espressoNamelist start='&' end='/' fold transparent contains=espressoNumber,espressoKey,espressoString,espressoBoolean,espressoComment

let b:current_syntax = 'espresso'

hi def link espressoNamelist    PreProc
hi def link espressoKey         Statement
hi def link espressoNumber      Constant
hi def link espressoString      Type
hi def link espressoBoolean     Special
hi def link espressoComment     Comment
