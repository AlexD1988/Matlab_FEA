$ Thermal Expansion of a Block
$
*KEYWORD
$
$=============================CONTROL DEFINITIONS ==============================
$
*TITLE
thermal expansion of a block
*CONTROL_SOLUTION
         2
*CONTROL_THERMAL_SOLVER
         1         0         1
*CONTROL_TIMESTEP
                                               .01
*CONTROL_THERMAL_TIMESTEP
         0       1.         .1
*CONTROL_TERMINATION
        3.
*DATABASE_BINARY_D3PLOT
       .01
*database_glstat
.03
$
$============================== PART DEFINITIONS ===============================
$
*PART
$      PID     SECID       MID                                              TMID
slab
         1         1         1                                                 1       
$
$============================= SECTION PROPERTIES ==============================
$
*SECTION_SOLID
$    SECID    ELFORM
         1         1
$
$====================== MECHANICAL MATERIAL PROPERTIES =========================
$
*MAT_ELASTIC_PLASTIC_THERMAL
         1        1.
        0.       10.       20.       30.       40.       50.
    1.e+10    1.e+10    1.e+10    1.e+10    1.e+10    1.e+10
        .3        .3        .3        .3        .3        .3
    0.e-06   20.e-07   40.e-07   60.e-07   80.e-07  100.e-07
    1.e+20    1.e+20    1.e+20    1.e+20    1.e+20    1.e+20
        0.        0.        0.        0.        0.        0.
$
$======================== THERMAL MATERIAL PROPERTIES ==========================
$
*MAT_THERMAL_ISOTROPIC
         1        1.         0       10.
        1.        1.
$
$============================= NODE DEFINTIONS =================================
$
*NODE
       1              0.              0.              0.       7
       2              1.              0.              0.       5
       3              1.              1.              0.       3
       4              0.              1.              0.       6
       5              0.              0.              1.       4
       6              1.              0.              1.       2
       7              1.              1.              1.       0
       8              0.              1.              1.       1
$
$============================ ELEMENT DEFINITIONS ==============================
$
*ELEMENT_SOLID
       1       1       1       2       3       4       5       6       7       8
*ELEMENT_SHELL
       1       2       3       4
$
$============================ ELEMENT DEFINITIONS ==============================
$
*INITIAL_TEMPERATURE_NODE
         1       10.
         2       10.
         3       10.
         4       10.
         5       10.
         6       10.
         7       10.
         8       10.
*END
