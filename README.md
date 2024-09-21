# [Design of Key-dependent S-Box using Chaotic Logistic Map for IoT-Enabled Smart Grid Devices](https://ieeexplore.ieee.org/abstract/document/10428685)
## Abstract
In the era of pervasive computing, a generation of lightweight ciphers was needed to provide near-optimal security; officially, NIST announced the standard lightweight cryptographic primitive. The newly announced standard, ASCON, is based on a 5-bit input and 5-bit output Substitution Box (S-box). This paper proposes a key-dependent S-box methodology for small-size S-box for Internet of Things (IoT) devices widely used in many applications such as Smart Grids, healthcare, etc. We aided this study with the chaotic logistic map to generate a robust S-box. The key-dependent S-box can add an extra layer of security to the cryptosystem specifically for lightweight devices at the minimal cost of generation time of a new S-box. We have investigated the proposed methodology with cryptographic properties of S-box, such as Differential Probability (DP), Linear Probability (LP), Nonlinearity, Strict Avalanche Criteria (SAC), Boomerang Connectivity Table (BCT), Key-space analysis, and implementation on Arduino. We also compared the proposed methodology with other state-of-the-art (SOTA) 5-bit input and output S-boxes. Experimental results witness the robustness of the proposed study.

## Tools
1. MATLAB 2023
2. SageMath 9.3
3. Arduino

## How to use?

Using **main.m", we used a function *generate_Sbox* that takes input of input and output size of S-box.
*get_dpTable*, *get_latTable*, *getMaxLP*, *getNonLinearity* to calculate the cryptographic properties DP, LAT, LP, and Nonlinearity respectively, of the generated S-box.

**sage_math.ipynb* is also used to find the cryptographic properties.
### Cite As
```
@INPROCEEDINGS{10428685,
  author={Irfan, Muhammad and Khan, Muhammad Asif and Oligeri, Gabriele},
  booktitle={2024 4th International Conference on Smart Grid and Renewable Energy (SGRE)}, 
  title={Design of Key-dependent S-Box using Chaotic Logistic Map for IoT-Enabled Smart Grid Devices}, 
  year={2024},
  volume={},
  number={},
  pages={1-6},
  keywords={Ciphers;Smart grids;Performance analysis;Cryptography;Internet of Things;Standards;Logistics;chaos;substitution box;lightweight cryptography;smart grid},
  doi={10.1109/SGRE59715.2024.10428685}}
  ```
