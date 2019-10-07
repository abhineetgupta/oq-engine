Classical Hazard-Risk QA test 4
===============================

============== ===================
checksum32     3,002,809,595      
date           2019-10-02T10:06:59
engine_version 3.8.0-git6f03622c6e
============== ===================

num_sites = 6, num_levels = 19, num_rlzs = 2

Parameters
----------
=============================== ==================
calculation_mode                'preclassical'    
number_of_logic_tree_samples    0                 
maximum_distance                {'default': 200.0}
investigation_time              50.0              
ses_per_logic_tree_path         1                 
truncation_level                3.0               
rupture_mesh_spacing            5.0               
complex_fault_mesh_spacing      5.0               
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
======================== ============================================================
Name                     File                                                        
======================== ============================================================
exposure                 `exposure_model.xml <exposure_model.xml>`_                  
gsim_logic_tree          `gmpe_logic_tree.xml <gmpe_logic_tree.xml>`_                
job_ini                  `job_haz.ini <job_haz.ini>`_                                
source_model_logic_tree  `source_model_logic_tree.xml <source_model_logic_tree.xml>`_
structural_vulnerability `vulnerability_model.xml <vulnerability_model.xml>`_        
======================== ============================================================

Composite source model
----------------------
========= ======= =============== ================
smlt_path weight  gsim_logic_tree num_realizations
========= ======= =============== ================
b1        1.00000 simple(2)       2               
========= ======= =============== ================

Required parameters per tectonic region type
--------------------------------------------
====== ======================================= =========== ======================= =================
grp_id gsims                                   distances   siteparams              ruptparams       
====== ======================================= =========== ======================= =================
0      '[AkkarBommer2010]' '[ChiouYoungs2008]' rjb rrup rx vs30 vs30measured z1pt0 dip mag rake ztor
====== ======================================= =========== ======================= =================

Realizations per (GRP, GSIM)
----------------------------

::

  <RlzsAssoc(size=4, rlzs=2)>

Number of ruptures per source group
-----------------------------------
====== ========= ============ ============
grp_id num_sites num_ruptures eff_ruptures
====== ========= ============ ============
0      7.00000   91,021       6,405       
====== ========= ============ ============

Exposure model
--------------
=========== =
#assets     6
#taxonomies 2
=========== =

======== ======= ====== === === ========= ==========
taxonomy mean    stddev min max num_sites num_assets
W        1.00000 0.0    1   1   5         5         
A        1.00000 NaN    1   1   1         1         
*ALL*    1.00000 0.0    1   1   6         6         
======== ======= ====== === === ========= ==========

Slowest sources
---------------
========= ====== ==== ============ ========= ========= ============
source_id grp_id code num_ruptures calc_time num_sites eff_ruptures
========= ====== ==== ============ ========= ========= ============
231       0      A    4,185        0.00270   0.00143   4,185       
376       0      A    2,220        0.00122   4.505E-04 2,220       
========= ====== ==== ============ ========= ========= ============

Computation times by source typology
------------------------------------
==== ========= ======
code calc_time counts
==== ========= ======
A    0.00393   39    
==== ========= ======

Information about the tasks
---------------------------
================== ======= ========= ======= ======= =======
operation-duration mean    stddev    min     max     outputs
SourceReader       2.11602 NaN       2.11602 2.11602 1      
preclassical       0.00186 4.506E-04 0.00133 0.00322 20     
================== ======= ========= ======= ======= =======

Data transfer
-------------
============ ========================================== ========
task         sent                                       received
SourceReader                                            65.53 KB
preclassical srcs=54.86 KB params=12.77 KB gsims=5.2 KB 5.8 KB  
============ ========================================== ========

Slowest operations
------------------
====================== ========= ========= ======
calc_29398             time_sec  memory_mb counts
====================== ========= ========= ======
composite source model 2.13171   1.96094   1     
total SourceReader     2.11602   0.83594   1     
total preclassical     0.03721   1.59766   20    
aggregate curves       0.00454   0.0       20    
store source_info      0.00231   0.0       1     
reading exposure       4.547E-04 0.0       1     
====================== ========= ========= ======