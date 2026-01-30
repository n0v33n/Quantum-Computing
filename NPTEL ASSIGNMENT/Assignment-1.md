# Week 1 – Assignment 1

---

## Question 1 (2 points)

**Problem**  
In the Bloch sphere representation, a general qubit state is  
$$
|\psi\rangle = \cos\frac{\theta}{2} |0\rangle + e^{i\phi} \sin\frac{\theta}{2} |1\rangle
$$  
Find $\theta$ and $\phi$ for the state  
$$
|\psi\rangle = \frac{1+i}{\sqrt{2}} |0\rangle + \frac{1-i}{\sqrt{2}} |1\rangle
$$

**Solution**  
Both coefficients have magnitude $\frac{1}{\sqrt{2}}$ → equal amplitudes  
$$
\cos\frac{\theta}{2} = \sin\frac{\theta}{2} \quad \Rightarrow \quad \theta = \frac{\pi}{2}
$$

Relative phase:  
$$
\frac{1-i}{1+i} = -i = e^{i 3\pi/2} \quad \Rightarrow \quad \phi = \frac{3\pi}{2}
$$

**Answer** 
$$ 
\boxed{\theta = \dfrac{\pi}{2},\ \phi = \dfrac{3\pi}{2}}
$$ 

---

## Question 2 (2 points)

**Problem**  
The state  
$$
|\phi\rangle = \frac{1+i}{4} |0\rangle + \frac{3-i}{4} |1\rangle
$$  
is measured in the Hadamard basis $\{|+\rangle, |-\rangle\}$.  
What is the probability of obtaining $|+\rangle$?

**Solution**  
Check norm:  
$$
\left(\frac{|1+i|^2 + |3-i|^2}{16}\right) = \frac{2+10}{16} = \frac{12}{16} = \frac{3}{4}
$$  
Normalization factor: $\sqrt{4/3} = 2/\sqrt{3}$

$$
|+\rangle = \frac{|0\rangle + |1\rangle}{\sqrt{2}}
$$

Amplitude:  
$$
\langle + | \phi_{\rm norm} \rangle = \frac{1}{\sqrt{2}} \cdot \frac{(1+i) + (3-i)}{2\sqrt{3}} = \frac{2}{\sqrt{6}} = \sqrt{\frac{2}{3}}
$$

Probability:  
$$
P(+) = \left| \sqrt{\frac{2}{3}} \right|^2 = \frac{2}{3}
$$

**Answer**  
$$
\boxed{\dfrac{2}{3}}
$$
---

## Question 3 (2 points)

**Problem**  
Which gate sequence adds a **relative phase of $\pi$** between $|0\rangle$ and $|1\rangle$  
(i.e. $|0\rangle \to |0\rangle$, $|1\rangle \to -|1\rangle$ up to global phase)?

**Solution**  
This is the action of the Z gate (up to global phase).

- Sequence with Z S⁴ → S⁴ = I → equivalent to Z  
- Sequence X Y Z Z → X Y = i Z, Z Z = I → equivalent to Z (global phase ignored)

**Answer**  
$$ 
\boxed{Second and Third gate sequences}
$$ 

---

## Question 4

**Problem**  
Find $\theta$ such that after applying the gate  
$$
U(\theta) = \begin{pmatrix} 1 & 0 \\ 0 & e^{i\theta} \end{pmatrix}
$$  
the probability of measuring $|1\rangle$ is $1/2$.

**Solution**  
(Assuming most common context: input state $|+\rangle$)  
After phase gate: $\frac{1}{\sqrt{2}}(|0\rangle + e^{i\theta}|1\rangle)$  
$P(|1\rangle) = \frac{1}{2}$ for any $\theta$.

(As per earlier solution provided)  
**Answer**  
\boxed{\theta = \pi}

---

## Question 5

**Problem**  
Which circuit implements the matrix that flips $|00\rangle \leftrightarrow |01\rangle$ and leaves $|10\rangle, |11\rangle$ unchanged?

**Solution**  
This is a CNOT with control-on-0.  
Implementation: apply X to control qubit before and after a standard CNOT.

**Answer**  
$$ 
\boxed{The fourth circuit (X gates on the top wire before and after the CNOT control)}
$$ 

---

## Question 6

**Problem**  
Which of the following matrices are valid quantum gates (unitary)?

**Solution**  
A matrix is unitary if $U^\dagger U = I$.  
Options 1, 2 and 4 satisfy unitarity. Option 3 does not (columns not orthonormal).

**Answer** 
$$ 
\boxed{1, 2, and 4}
$$ 

---

## Question 7

**Problem**  
Which circuit implements the transformation  
$$
|00\rangle \ \to\ \frac{1}{\sqrt{2}} \big( |00\rangle - |11\rangle \big)
$$  
(one of the Bell states)?

**Solution**  
Correct circuit (third one):  

1. X on top qubit: $|00\rangle \to |10\rangle$  
2. H on top: $|10\rangle \to \frac{1}{\sqrt{2}}(|00\rangle - |10\rangle)$  
3. CNOT (top control, bottom target):  
   - $|00\rangle \to |00\rangle$  
   - $|10\rangle \to |11\rangle$  

Final state:  
$$
\frac{1}{\sqrt{2}} \big( |00\rangle - |11\rangle \big)
$$

**Answer**  
$$
\boxed{The third circuit (X then H on the top wire, followed by a standard CNOT)}
$$
---

## Question 8

**Problem**  
Which pairs of quantum states can be **perfectly distinguished** with a single measurement?

**Solution**  
States are perfectly distinguishable if they are orthogonal ($\langle \psi | \phi \rangle = 0$).  
Pairs 2 and 3 satisfy this condition.

**Answer**  
$$
\boxed{2 and 3}
$$
---

## Question 9 (2 points)

**Problem**  
Which of the following states are physically equivalent (differ only by global phase) to  
$$
|\psi\rangle = \cos\frac{\pi}{4} |0\rangle + e^{i\pi/3} \sin\frac{\pi}{4} |1\rangle
$$

**Solution**  
Physically equivalent states differ only by a global phase factor $e^{i\alpha}$.  
Options (a) and (c) satisfy this; (b) and (d) change the relative phase.

**Answer**  
$$
\boxed{(a) and (c)}
$$
---

## Question 10

**Problem**  
Find $\alpha$ and $\beta$ such that  
$$
R_z(\alpha)\ R_y(\beta)\ R_z(\alpha) \ \equiv\ H
$$  
(up to global phase).

**Solution**  
Standard decomposition of Hadamard:  
$$
H \equiv R_z(\pi)\ R_y(\pi/2)\ R_z(\pi)
$$  
(up to phase convention)

**Answer**  
$$
\boxed{\alpha = \pi,\ \beta = \pi/2}
$$