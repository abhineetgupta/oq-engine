Event Based Risk SJ
===================

============== ===================
checksum32     2,863,568,899      
date           2019-10-02T10:07:18
engine_version 3.8.0-git6f03622c6e
============== ===================

num_sites = 61, num_levels = 1, num_rlzs = ?

Parameters
----------
=============================== =================
calculation_mode                'event_based'    
number_of_logic_tree_samples    0                
maximum_distance                {'default': 50.0}
investigation_time              25.0             
ses_per_logic_tree_path         1                
truncation_level                3.0              
rupture_mesh_spacing            5.0              
complex_fault_mesh_spacing      5.0              
width_of_mfd_bin                0.3              
area_source_discretization      20.0             
ground_motion_correlation_model 'JB2009'         
minimum_intensity               {}               
random_seed                     23               
master_seed                     0                
ses_seed                        42               
=============================== =================

Input files
-----------
======================= ====================================================================
Name                    File                                                                
======================= ====================================================================
gsim_logic_tree         `Costa_Rica_RESIS_II_gmpe_CQ.xml <Costa_Rica_RESIS_II_gmpe_CQ.xml>`_
job_ini                 `job.ini <job.ini>`_                                                
site_model              `site_model_CR_60.xml <site_model_CR_60.xml>`_                      
source_model_logic_tree `sm_lt.xml <sm_lt.xml>`_                                            
======================= ====================================================================

Number of ruptures per source group
-----------------------------------
====== ========= ============ ============
grp_id num_sites num_ruptures eff_ruptures
====== ========= ============ ============
0      0.0       120          0.0         
====== ========= ============ ============

Slowest sources
---------------
========= ====== ==== ============ ========= ========= ============
source_id grp_id code num_ruptures calc_time num_sites eff_ruptures
========= ====== ==== ============ ========= ========= ============
========= ====== ==== ============ ========= ========= ============

Computation times by source typology
------------------------------------
==== ========= ======
code calc_time counts
==== ========= ======
A    0.0       1     
==== ========= ======

Information about the tasks
---------------------------
================== ======= ====== ======= ======= =======
operation-duration mean    stddev min     max     outputs
SourceReader       0.00517 NaN    0.00517 0.00517 1      
================== ======= ====== ======= ======= =======

Data transfer
-------------
============ ==== ========
task         sent received
SourceReader      3.88 KB 
============ ==== ========

Slowest operations
------------------
====================== ======== ========= ======
calc_29476             time_sec memory_mb counts
====================== ======== ========= ======
composite source model 0.01360  0.0       1     
total SourceReader     0.00517  0.0       1     
====================== ======== ========= ======