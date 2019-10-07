Classical PSHA — using GMPE specrtal averaging
==============================================

============== ===================
checksum32     1,294,779,737      
date           2019-10-02T10:07:29
engine_version 3.8.0-git6f03622c6e
============== ===================

num_sites = 1, num_levels = 20, num_rlzs = 1

Parameters
----------
=============================== ==================
calculation_mode                'preclassical'    
number_of_logic_tree_samples    0                 
maximum_distance                {'default': 200.0}
investigation_time              50.0              
ses_per_logic_tree_path         1                 
truncation_level                3.0               
rupture_mesh_spacing            2.0               
complex_fault_mesh_spacing      2.0               
width_of_mfd_bin                0.2               
area_source_discretization      10.0              
ground_motion_correlation_model None              
minimum_intensity               {}                
random_seed                     23                
master_seed                     0                 
ses_seed                        42                
=============================== ==================

Input files
-----------
======================= ============================================================
Name                    File                                                        
======================= ============================================================
gsim_logic_tree         `gmpe_logic_tree.xml <gmpe_logic_tree.xml>`_                
job_ini                 `job.ini <job.ini>`_                                        
source_model_logic_tree `source_model_logic_tree.xml <source_model_logic_tree.xml>`_
======================= ============================================================

Composite source model
----------------------
========= ======= =============== ================
smlt_path weight  gsim_logic_tree num_realizations
========= ======= =============== ================
b1        1.00000 trivial(1)      1               
========= ======= =============== ================

Required parameters per tectonic region type
--------------------------------------------
====== ================================================================================================================= ========= ========== ==========
grp_id gsims                                                                                                             distances siteparams ruptparams
====== ================================================================================================================= ========= ========== ==========
0      '[GenericGmpeAvgSA]\ngmpe_name = "BooreAtkinson2008"\navg_periods = [0.5, 1.0, 2.0]\ncorr_func = "baker_jayaram"' rjb       vs30       mag rake  
====== ================================================================================================================= ========= ========== ==========

Realizations per (GRP, GSIM)
----------------------------

::

  <RlzsAssoc(size=1, rlzs=1)>

Number of ruptures per source group
-----------------------------------
====== ========= ============ ============
grp_id num_sites num_ruptures eff_ruptures
====== ========= ============ ============
0      1.00000   2,093        2,093       
====== ========= ============ ============

Slowest sources
---------------
========= ====== ==== ============ ========= ========= ============
source_id grp_id code num_ruptures calc_time num_sites eff_ruptures
========= ====== ==== ============ ========= ========= ============
956       0      A    2,093        0.00221   4.778E-04 2,093       
========= ====== ==== ============ ========= ========= ============

Computation times by source typology
------------------------------------
==== ========= ======
code calc_time counts
==== ========= ======
A    0.00221   1     
==== ========= ======

Information about the tasks
---------------------------
================== ======= ====== ======= ======= =======
operation-duration mean    stddev min     max     outputs
SourceReader       0.09364 NaN    0.09364 0.09364 1      
preclassical       0.00272 NaN    0.00272 0.00272 1      
================== ======= ====== ======= ======= =======

Data transfer
-------------
============ ===================================== ========
task         sent                                  received
SourceReader                                       4.81 KB 
preclassical srcs=2.43 KB gsims=844 B params=657 B 342 B   
============ ===================================== ========

Slowest operations
------------------
====================== ========= ========= ======
calc_29505             time_sec  memory_mb counts
====================== ========= ========= ======
composite source model 0.10317   0.0       1     
total SourceReader     0.09364   0.0       1     
total preclassical     0.00272   0.0       1     
store source_info      0.00217   0.0       1     
aggregate curves       1.915E-04 0.0       1     
====================== ========= ========= ======