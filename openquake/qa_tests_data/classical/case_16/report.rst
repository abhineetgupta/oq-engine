Classical PSHA with non-trivial logic tree (1 source model + 5 (a, b) pairs per source + 3 Mmax per source
==========================================================================================================

============== ===================
checksum32     1,751,642,476      
date           2019-10-02T10:07:32
engine_version 3.8.0-git6f03622c6e
============== ===================

num_sites = 1, num_levels = 3, num_rlzs = 10

Parameters
----------
=============================== ==================
calculation_mode                'preclassical'    
number_of_logic_tree_samples    10                
maximum_distance                {'default': 200.0}
investigation_time              50.0              
ses_per_logic_tree_path         1                 
truncation_level                3.0               
rupture_mesh_spacing            2.0               
complex_fault_mesh_spacing      2.0               
width_of_mfd_bin                0.1               
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
============================================= ======= =============== ================
smlt_path                                     weight  gsim_logic_tree num_realizations
============================================= ======= =============== ================
b11_b21_b32_b41_b52_b61_b72_b81_b92_b101_b112 0.10000 trivial(1)      1               
b11_b22_b32_b42_b52_b62_b72_b82_b92_b102_b112 0.10000 trivial(1)      1               
b11_b23_b32_b43_b52_b63_b72_b83_b92_b103_b112 0.10000 trivial(1)      1               
b11_b23_b33_b43_b53_b63_b73_b83_b93_b103_b113 0.10000 trivial(1)      1               
b11_b24_b33_b44_b53_b64_b73_b84_b93_b104_b113 0.10000 trivial(1)      1               
============================================= ======= =============== ================

Required parameters per tectonic region type
--------------------------------------------
====== ===================== ========= ========== ==========
grp_id gsims                 distances siteparams ruptparams
====== ===================== ========= ========== ==========
0      '[BooreAtkinson2008]' rjb       vs30       mag rake  
1      '[BooreAtkinson2008]' rjb       vs30       mag rake  
2      '[BooreAtkinson2008]' rjb       vs30       mag rake  
3      '[BooreAtkinson2008]' rjb       vs30       mag rake  
4      '[BooreAtkinson2008]' rjb       vs30       mag rake  
====== ===================== ========= ========== ==========

Realizations per (GRP, GSIM)
----------------------------

::

  <RlzsAssoc(size=5, rlzs=10)>

Number of ruptures per source group
-----------------------------------
====== ========= ============ ============
grp_id num_sites num_ruptures eff_ruptures
====== ========= ============ ============
0      5.00000   2,025        2,025       
1      5.00000   2,025        2,025       
2      5.00000   2,025        2,025       
3      5.00000   2,295        2,295       
4      5.00000   2,295        2,295       
====== ========= ============ ============

Slowest sources
---------------
========= ====== ==== ============ ========= ========= ============
source_id grp_id code num_ruptures calc_time num_sites eff_ruptures
========= ====== ==== ============ ========= ========= ============
3         0      A    450          0.00332   0.00222   450         
1         0      A    375          0.00279   0.00267   375         
2         2      A    450          0.00231   0.00222   450         
2         0      A    450          0.00228   0.00222   450         
1         3      A    425          0.00224   0.00235   425         
4         3      A    425          0.00222   0.00235   425         
1         2      A    375          0.00207   0.00267   375         
4         0      A    375          0.00206   0.00267   375         
2         4      A    510          0.00205   0.00196   510         
3         2      A    450          0.00205   0.00222   450         
4         2      A    375          0.00202   0.00267   375         
1         1      A    375          0.00201   0.00267   375         
4         4      A    425          0.00198   0.00235   425         
5         0      A    375          0.00190   0.00267   375         
5         2      A    375          0.00185   0.00267   375         
2         1      A    450          0.00184   0.00222   450         
3         3      A    510          0.00175   0.00196   510         
5         4      A    425          0.00169   0.00235   425         
3         4      A    510          0.00162   0.00196   510         
1         4      A    425          0.00154   0.00235   425         
========= ====== ==== ============ ========= ========= ============

Computation times by source typology
------------------------------------
==== ========= ======
code calc_time counts
==== ========= ======
A    0.04795   25    
==== ========= ======

Information about the tasks
---------------------------
================== ======= ========= ======= ======= =======
operation-duration mean    stddev    min     max     outputs
SourceReader       0.05520 0.00508   0.04725 0.05965 5      
preclassical       0.00234 5.550E-04 0.00137 0.00383 25     
================== ======= ========= ======= ======= =======

Data transfer
-------------
============ =============================================== ========
task         sent                                            received
SourceReader apply_unc=21.92 KB ltmodel=1.23 KB fname=520 B  50.97 KB
preclassical srcs=48.02 KB params=12.65 KB srcfilter=5.44 KB 8.35 KB 
============ =============================================== ========

Slowest operations
------------------
====================== ======== ========= ======
calc_29521             time_sec memory_mb counts
====================== ======== ========= ======
total SourceReader     0.27599  0.0       5     
composite source model 0.09568  0.0       1     
total preclassical     0.05841  0.0       25    
aggregate curves       0.00697  0.0       25    
store source_info      0.00290  0.0       1     
====================== ======== ========= ======