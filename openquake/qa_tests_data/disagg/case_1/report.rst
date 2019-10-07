QA test for disaggregation case_1, taken from the disagg demo
=============================================================

============== ===================
checksum32     1,811,660,702      
date           2019-10-02T10:07:13
engine_version 3.8.0-git6f03622c6e
============== ===================

num_sites = 2, num_levels = 38, num_rlzs = 1

Parameters
----------
=============================== ==================
calculation_mode                'preclassical'    
number_of_logic_tree_samples    0                 
maximum_distance                {'default': 100.0}
investigation_time              50.0              
ses_per_logic_tree_path         1                 
truncation_level                3.0               
rupture_mesh_spacing            5.0               
complex_fault_mesh_spacing      5.0               
width_of_mfd_bin                0.2               
area_source_discretization      10.0              
ground_motion_correlation_model None              
minimum_intensity               {}                
random_seed                     9000              
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
====== =================== =========== ======================= =================
grp_id gsims               distances   siteparams              ruptparams       
====== =================== =========== ======================= =================
0      '[ChiouYoungs2008]' rjb rrup rx vs30 vs30measured z1pt0 dip mag rake ztor
1      '[ChiouYoungs2008]' rjb rrup rx vs30 vs30measured z1pt0 dip mag rake ztor
2      '[ChiouYoungs2008]' rjb rrup rx vs30 vs30measured z1pt0 dip mag rake ztor
3      '[ChiouYoungs2008]' rjb rrup rx vs30 vs30measured z1pt0 dip mag rake ztor
====== =================== =========== ======================= =================

Realizations per (GRP, GSIM)
----------------------------

::

  <RlzsAssoc(size=4, rlzs=1)>

Number of ruptures per source group
-----------------------------------
====== ========= ============ ============
grp_id num_sites num_ruptures eff_ruptures
====== ========= ============ ============
0      1.00000   15           15          
1      1.00000   1,440        1,440       
2      1.00000   617          617         
3      1.00000   164          164         
====== ========= ============ ============

Slowest sources
---------------
========= ====== ==== ============ ========= ========= ============
source_id grp_id code num_ruptures calc_time num_sites eff_ruptures
========= ====== ==== ============ ========= ========= ============
3         2      S    617          0.00532   0.00162   617         
4         3      C    164          0.00478   0.00610   164         
1         0      P    15           0.00253   0.06667   15          
2         1      A    1,440        0.00236   6.944E-04 1,440       
========= ====== ==== ============ ========= ========= ============

Computation times by source typology
------------------------------------
==== ========= ======
code calc_time counts
==== ========= ======
A    0.00236   1     
C    0.00478   1     
P    0.00253   1     
S    0.00532   1     
==== ========= ======

Information about the tasks
---------------------------
================== ======= ======= ======= ======= =======
operation-duration mean    stddev  min     max     outputs
SourceReader       0.04446 NaN     0.04446 0.04446 1      
preclassical       0.00427 0.00151 0.00290 0.00579 4      
================== ======= ======= ======= ======= =======

Data transfer
-------------
============ =========================================== ========
task         sent                                        received
SourceReader                                             7.68 KB 
preclassical srcs=5.24 KB params=3.43 KB srcfilter=892 B 1.34 KB 
============ =========================================== ========

Slowest operations
------------------
====================== ======== ========= ======
calc_29435             time_sec memory_mb counts
====================== ======== ========= ======
composite source model 0.05705  0.0       1     
total SourceReader     0.04446  0.0       1     
total preclassical     0.01709  0.0       4     
store source_info      0.00254  0.0       1     
aggregate curves       0.00110  0.0       4     
====================== ======== ========= ======