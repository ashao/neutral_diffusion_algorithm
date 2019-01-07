   TiL(1,:) = (/ 22.00, 18.00 /); TiL(2,:) = (/ 18.00, 14.00 /); TiL(3,:) = (/ 14.00, 10.00 /); 
   TiR(1,:) = (/ 22.00, 18.00 /); TiR(2,:) = (/ 18.00, 14.00 /); TiR(3,:) = (/ 14.00, 10.00 /); 
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Til, Sil, Pres_l, stable_l )
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Tir, Sir, Pres_r, stable_r )
   call find_neutral_surface_positions_discontinuous(CS, nk, Pres_l, hL, TiL, SiL, dRdT, dRdS, stable_l, &
     Pres_r, hR, TiR, SiR, dRdT, dRdS, stable_r, PoL, PoR, KoL, KoR, hEff)
   ndiff_unit_tests_discontinuous = ndiff_unit_tests_discontinuous .or.  test_nsp(v, 12, KoL, KoR, PoL, PoR, hEff, &
     (/ 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3 /),  & ! KoL
     (/ 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3 /),  & ! KoR
     (/ 0.00, 0.00, 1.00, 1.00, 0.00, 0.00, 1.00, 1.00, 0.00, 0.00, 1.00, 1.00 /),  & ! PoL
     (/ 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 1.00, 1.00 /),  & ! PoR
     (/ 0.00, 10.00, 0.00, 0.00, 0.00, 10.00, 0.00, 0.00, 0.00, 10.00, 0.00 /),  & ! hEff
     'Identical Columns')

   TiL(1,:) = (/ 22.00, 18.00 /); TiL(2,:) = (/ 18.00, 14.00 /); TiL(3,:) = (/ 14.00, 10.00 /); 
   TiR(1,:) = (/ 20.00, 16.00 /); TiR(2,:) = (/ 16.00, 12.00 /); TiR(3,:) = (/ 12.00, 8.00 /); 
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Til, Sil, Pres_l, stable_l )
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Tir, Sir, Pres_r, stable_r )
   call find_neutral_surface_positions_discontinuous(CS, nk, Pres_l, hL, TiL, SiL, dRdT, dRdS, stable_l, &
     Pres_r, hR, TiR, SiR, dRdT, dRdS, stable_r, PoL, PoR, KoL, KoR, hEff)
   ndiff_unit_tests_discontinuous = ndiff_unit_tests_discontinuous .or.  test_nsp(v, 12, KoL, KoR, PoL, PoR, hEff, &
     (/ 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3 /),  & ! KoL
     (/ 1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3 /),  & ! KoR
     (/ 0.00, 0.50, 1.00, 0.00, 0.50, 0.50, 1.00, 0.00, 0.50, 0.50, 1.00, 1.00 /),  & ! PoL
     (/ 0.00, 0.00, 0.50, 0.50, 1.00, 0.00, 0.50, 0.50, 1.00, 0.00, 0.50, 1.00 /),  & ! PoR
     (/ 0.00, 5.00, 0.00, 5.00, 0.00, 5.00, 0.00, 5.00, 0.00, 5.00, 0.00 /),  & ! hEff
     'Right slightly cooler')

   TiL(1,:) = (/ 20.00, 16.00 /); TiL(2,:) = (/ 16.00, 12.00 /); TiL(3,:) = (/ 12.00, 8.00 /); 
   TiR(1,:) = (/ 22.00, 18.00 /); TiR(2,:) = (/ 18.00, 14.00 /); TiR(3,:) = (/ 14.00, 10.00 /); 
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Til, Sil, Pres_l, stable_l )
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Tir, Sir, Pres_r, stable_r )
   call find_neutral_surface_positions_discontinuous(CS, nk, Pres_l, hL, TiL, SiL, dRdT, dRdS, stable_l, &
     Pres_r, hR, TiR, SiR, dRdT, dRdS, stable_r, PoL, PoR, KoL, KoR, hEff)
   ndiff_unit_tests_discontinuous = ndiff_unit_tests_discontinuous .or.  test_nsp(v, 12, KoL, KoR, PoL, PoR, hEff, &
     (/ 1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3 /),  & ! KoL
     (/ 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3 /),  & ! KoR
     (/ 0.00, 0.00, 0.50, 0.50, 1.00, 0.00, 0.50, 0.50, 1.00, 0.00, 0.50, 1.00 /),  & ! PoL
     (/ 0.00, 0.50, 1.00, 0.00, 0.50, 0.50, 1.00, 0.00, 0.50, 0.50, 1.00, 1.00 /),  & ! PoR
     (/ 0.00, 5.00, 0.00, 5.00, 0.00, 5.00, 0.00, 5.00, 0.00, 5.00, 0.00 /),  & ! hEff
     'Left slightly cooler')

   TiL(1,:) = (/ 22.00, 20.00 /); TiL(2,:) = (/ 18.00, 16.00 /); TiL(3,:) = (/ 14.00, 12.00 /); 
   TiR(1,:) = (/ 32.00, 24.00 /); TiR(2,:) = (/ 22.00, 14.00 /); TiR(3,:) = (/ 12.00, 4.00 /); 
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Til, Sil, Pres_l, stable_l )
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Tir, Sir, Pres_r, stable_r )
   call find_neutral_surface_positions_discontinuous(CS, nk, Pres_l, hL, TiL, SiL, dRdT, dRdS, stable_l, &
     Pres_r, hR, TiR, SiR, dRdT, dRdS, stable_r, PoL, PoR, KoL, KoR, hEff)
   ndiff_unit_tests_discontinuous = ndiff_unit_tests_discontinuous .or.  test_nsp(v, 12, KoL, KoR, PoL, PoR, hEff, &
     (/ 1, 1, 1, 1, 1, 2, 2, 3, 3, 3, 3, 3 /),  & ! KoL
     (/ 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3 /),  & ! KoR
     (/ 0.00, 0.00, 0.00, 0.00, 1.00, 0.00, 1.00, 0.00, 0.00, 1.00, 1.00, 1.00 /),  & ! PoL
     (/ 0.00, 1.00, 0.00, 0.00, 0.25, 0.50, 0.75, 1.00, 0.00, 0.00, 0.00, 1.00 /),  & ! PoR
     (/ 0.00, 0.00, 0.00, 4.00, 0.00, 4.00, 0.00, 0.00, 0.00, 0.00, 0.00 /),  & ! hEff
     'Right more strongly stratified')

   TiL(1,:) = (/ 22.00, 18.00 /); TiL(2,:) = (/ 18.00, 14.00 /); TiL(3,:) = (/ 14.00, 10.00 /); 
   TiR(1,:) = (/ 14.00, 14.00 /); TiR(2,:) = (/ 14.00, 14.00 /); TiR(3,:) = (/ 12.00, 8.00 /); 
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Til, Sil, Pres_l, stable_l )
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Tir, Sir, Pres_r, stable_r )
   call find_neutral_surface_positions_discontinuous(CS, nk, Pres_l, hL, TiL, SiL, dRdT, dRdS, stable_l, &
     Pres_r, hR, TiR, SiR, dRdT, dRdS, stable_r, PoL, PoR, KoL, KoR, hEff)
   ndiff_unit_tests_discontinuous = ndiff_unit_tests_discontinuous .or.  test_nsp(v, 12, KoL, KoR, PoL, PoR, hEff, &
     (/ 1, 1, 1, 1, 1, 1, 2, 2, 3, 3, 3, 3 /),  & ! KoL
     (/ 1, 1, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3 /),  & ! KoR
     (/ 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0.00, 1.00, 0.00, 0.50, 1.00, 1.00 /),  & ! PoL
     (/ 0.00, 1.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.50, 1.00 /),  & ! PoR
     (/ 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 0.00 /),  & ! hEff
     'Deep Mixed layer on the right')

   TiL(1,:) = (/ 14.00, 14.00 /); TiL(2,:) = (/ 14.00, 12.00 /); TiL(3,:) = (/ 10.00, 8.00 /); 
   TiR(1,:) = (/ 14.00, 14.00 /); TiR(2,:) = (/ 14.00, 14.00 /); TiR(3,:) = (/ 14.00, 14.00 /); 
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Til, Sil, Pres_l, stable_l )
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Tir, Sir, Pres_r, stable_r )
   call find_neutral_surface_positions_discontinuous(CS, nk, Pres_l, hL, TiL, SiL, dRdT, dRdS, stable_l, &
     Pres_r, hR, TiR, SiR, dRdT, dRdS, stable_r, PoL, PoR, KoL, KoR, hEff)
   ndiff_unit_tests_discontinuous = ndiff_unit_tests_discontinuous .or.  test_nsp(v, 12, KoL, KoR, PoL, PoR, hEff, &
     (/ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 /),  & ! KoL
     (/ 1, 1, 1, 1, 2, 2, 3, 3, 3, 3, 3, 3 /),  & ! KoR
     (/ 0.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00 /),  & ! PoL
     (/ 0.00, 0.00, 0.00, 1.00, 0.00, 1.00, 0.00, 1.00, 1.00, 1.00, 1.00, 1.00 /),  & ! PoR
     (/ 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00 /),  & ! hEff
     'Right unstratified column')

   TiL(1,:) = (/ 14.00, 14.00 /); TiL(2,:) = (/ 14.00, 12.00 /); TiL(3,:) = (/ 10.00, 8.00 /); 
   TiR(1,:) = (/ 14.00, 14.00 /); TiR(2,:) = (/ 14.00, 14.00 /); TiR(3,:) = (/ 12.00, 4.00 /); 
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Til, Sil, Pres_l, stable_l )
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Tir, Sir, Pres_r, stable_r )
   call find_neutral_surface_positions_discontinuous(CS, nk, Pres_l, hL, TiL, SiL, dRdT, dRdS, stable_l, &
     Pres_r, hR, TiR, SiR, dRdT, dRdS, stable_r, PoL, PoR, KoL, KoR, hEff)
   ndiff_unit_tests_discontinuous = ndiff_unit_tests_discontinuous .or.  test_nsp(v, 12, KoL, KoR, PoL, PoR, hEff, &
     (/ 1, 1, 1, 1, 1, 1, 2, 2, 2, 3, 3, 3 /),  & ! KoL
     (/ 1, 1, 1, 1, 2, 2, 3, 3, 3, 3, 3, 3 /),  & ! KoR
     (/ 0.00, 1.00, 1.00, 1.00, 1.00, 1.00, 0.00, 1.00, 1.00, 0.00, 1.00, 1.00 /),  & ! PoL
     (/ 0.00, 0.00, 0.00, 1.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.25, 0.50, 1.00 /),  & ! PoR
     (/ 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 0.00 /),  & ! hEff
     'Right unstratified column')

   TiL(1,:) = (/ 14.00, 14.00 /); TiL(2,:) = (/ 14.00, 10.00 /); TiL(3,:) = (/ 10.00, 2.00 /); 
   TiR(1,:) = (/ 14.00, 14.00 /); TiR(2,:) = (/ 14.00, 10.00 /); TiR(3,:) = (/ 10.00, 2.00 /); 
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Til, Sil, Pres_l, stable_l )
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Tir, Sir, Pres_r, stable_r )
   call find_neutral_surface_positions_discontinuous(CS, nk, Pres_l, hL, TiL, SiL, dRdT, dRdS, stable_l, &
     Pres_r, hR, TiR, SiR, dRdT, dRdS, stable_r, PoL, PoR, KoL, KoR, hEff)
   ndiff_unit_tests_discontinuous = ndiff_unit_tests_discontinuous .or.  test_nsp(v, 12, KoL, KoR, PoL, PoR, hEff, &
     (/ 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3 /),  & ! KoL
     (/ 1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3 /),  & ! KoR
     (/ 0.00, 1.00, 1.00, 1.00, 0.00, 0.00, 1.00, 1.00, 0.00, 0.00, 1.00, 1.00 /),  & ! PoL
     (/ 0.00, 0.00, 0.00, 1.00, 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 1.00, 1.00 /),  & ! PoR
     (/ 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 0.00, 0.00, 0.00, 10.00, 0.00 /),  & ! hEff
     'Identical columns with mixed layer')

   TiL(1,:) = (/ 14.00, 12.00 /); TiL(2,:) = (/ 10.00, 10.00 /); TiL(3,:) = (/ 8.00, 2.00 /); 
   TiR(1,:) = (/ 14.00, 12.00 /); TiR(2,:) = (/ 12.00, 8.00 /); TiR(3,:) = (/ 8.00, 2.00 /); 
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Til, Sil, Pres_l, stable_l )
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Tir, Sir, Pres_r, stable_r )
   call find_neutral_surface_positions_discontinuous(CS, nk, Pres_l, hL, TiL, SiL, dRdT, dRdS, stable_l, &
     Pres_r, hR, TiR, SiR, dRdT, dRdS, stable_r, PoL, PoR, KoL, KoR, hEff)
   ndiff_unit_tests_discontinuous = ndiff_unit_tests_discontinuous .or.  test_nsp(v, 12, KoL, KoR, PoL, PoR, hEff, &
     (/ 1, 1, 1, 1, 2, 2, 3, 3, 3, 3, 3, 3 /),  & ! KoL
     (/ 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3 /),  & ! KoR
     (/ 0.00, 0.00, 1.00, 1.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00 /),  & ! PoL
     (/ 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 0.00, 1.00, 1.00 /),  & ! PoR
     (/ 0.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 0.00 /),  & ! hEff
     'Left interior unstratified')

   TiL(1,:) = (/ 12.00, 12.00 /); TiL(2,:) = (/ 12.00, 10.00 /); TiL(3,:) = (/ 10.00, 6.00 /); 
   TiR(1,:) = (/ 12.00, 10.00 /); TiR(2,:) = (/ 10.00, 12.00 /); TiR(3,:) = (/ 8.00, 4.00 /); 
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Til, Sil, Pres_l, stable_l )
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Tir, Sir, Pres_r, stable_r )
   call find_neutral_surface_positions_discontinuous(CS, nk, Pres_l, hL, TiL, SiL, dRdT, dRdS, stable_l, &
     Pres_r, hR, TiR, SiR, dRdT, dRdS, stable_r, PoL, PoR, KoL, KoR, hEff)
   ndiff_unit_tests_discontinuous = ndiff_unit_tests_discontinuous .or.  test_nsp(v, 12, KoL, KoR, PoL, PoR, hEff, &
     (/ 1, 1, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3 /),  & ! KoL
     (/ 1, 1, 1, 1, 1, 1, 2, 2, 3, 3, 3, 3 /),  & ! KoR
     (/ 0.00, 1.00, 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.50, 1.00, 1.00 /),  & ! PoL
     (/ 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 0.00, 1.00, 0.00, 0.00, 0.50, 1.00 /),  & ! PoR
     (/ 0.00, 0.00, 0.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 0.00 /),  & ! hEff
     'Left mixed layer, Right unstable interior')

   TiL(1,:) = (/ 14.00, 14.00 /); TiL(2,:) = (/ 10.00, 10.00 /); TiL(3,:) = (/ 8.00, 6.00 /); 
   TiR(1,:) = (/ 10.00, 14.00 /); TiR(2,:) = (/ 16.00, 16.00 /); TiR(3,:) = (/ 12.00, 4.00 /); 
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Til, Sil, Pres_l, stable_l )
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Tir, Sir, Pres_r, stable_r )
   call find_neutral_surface_positions_discontinuous(CS, nk, Pres_l, hL, TiL, SiL, dRdT, dRdS, stable_l, &
     Pres_r, hR, TiR, SiR, dRdT, dRdS, stable_r, PoL, PoR, KoL, KoR, hEff)
   ndiff_unit_tests_discontinuous = ndiff_unit_tests_discontinuous .or.  test_nsp(v, 12, KoL, KoR, PoL, PoR, hEff, &
     (/ 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3 /),  & ! KoL
     (/ 1, 1, 1, 1, 1, 1, 2, 2, 3, 3, 3, 3 /),  & ! KoR
     (/ 0.00, 1.00, 0.00, 1.00, 1.00, 1.00, 1.00, 1.00, 0.00, 0.00, 1.00, 1.00 /),  & ! PoL
     (/ 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0.00, 1.00, 0.00, 0.50, 0.75, 1.00 /),  & ! PoR
     (/ 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 0.00 /),  & ! hEff
     'Left thick mixed layer, Right unstable mixed')

   TiL(1,:) = (/ 8.00, 12.00 /); TiL(2,:) = (/ 12.00, 10.00 /); TiL(3,:) = (/ 8.00, 4.00 /); 
   TiR(1,:) = (/ 10.00, 14.00 /); TiR(2,:) = (/ 14.00, 12.00 /); TiR(3,:) = (/ 10.00, 6.00 /); 
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Til, Sil, Pres_l, stable_l )
   call mark_unstable_cells( CS, nk, dRdT, dRdS, Tir, Sir, Pres_r, stable_r )
   call find_neutral_surface_positions_discontinuous(CS, nk, Pres_l, hL, TiL, SiL, dRdT, dRdS, stable_l, &
     Pres_r, hR, TiR, SiR, dRdT, dRdS, stable_r, PoL, PoR, KoL, KoR, hEff)
   ndiff_unit_tests_discontinuous = ndiff_unit_tests_discontinuous .or.  test_nsp(v, 12, KoL, KoR, PoL, PoR, hEff, &
     (/ 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3 /),  & ! KoL
     (/ 1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 3, 3 /),  & ! KoR
     (/ 0.00, 1.00, 1.00, 1.00, 0.00, 0.00, 0.00, 1.00, 0.00, 0.00, 0.50, 1.00 /),  & ! PoL
     (/ 0.00, 0.00, 0.00, 1.00, 0.00, 1.00, 1.00, 0.00, 0.00, 0.50, 1.00, 1.00 /),  & ! PoR
     (/ 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 0.00 /),  & ! hEff
     'Unstable mixed layers, left cooler')

