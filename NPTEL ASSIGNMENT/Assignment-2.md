# IBM Quantum / Qiskit – Week 2 Assignment 2

## Question 1  
Which of the following are Qiskit Runtime primitives currently available on the IBM Quantum Platform?

- [x] Sampler  
- [x] Estimator  
- [ ] Circuit-Runner  
- [ ] Executor  

**Answer:** Sampler and Estimator

## Question 2  
According to the IBM Quantum Composer documentation, which version of Open-QASM is currently supported for writing quantum circuits in the code editor?

- [ ] OpenQASM 1.0  
- [x] OpenQASM 2.0  
- [ ] OpenQASM 3.0  
- [ ] OpenQASM 2.5  

**Answer:** OpenQASM 2.0

## Question 3  
Which statement correctly describes the difference between the Sampler and Estimator primitives in Qiskit?

- [x] Sampler returns measurement outcome distributions from a circuit, while Estimator returns expectation values of specified observables  
- [ ] Sampler is used for variational algorithms, while Estimator is used only for circuit execution  
- [ ] Sampler requires observables as input, while Estimator does not  
- [ ] Estimator returns raw bitstrings, while Sampler returns expectation values  

**Answer:** Sampler returns measurement outcome distributions from a circuit, while Estimator returns expectation values of specified observables

## Question 4  
In the transpilation process, which of the following steps are **NOT** performed to prepare a quantum circuit for execution on real quantum hardware?

- [ ] Decomposing multi-qubit gates into basis gates supported by the backend  
- [ ] Mapping logical qubits to physical qubits based on the hardware topology  
- [ ] Optimizing circuit depth to reduce gate count  
- [x] Converting all gates to Hadamard and CNOT gates only  

**Answer:** Converting all gates to Hadamard and CNOT gates only

## Question 5  
Using IBM Quantum Composer, create a 3-qubit circuit starting in state |000⟩. Apply a rotation gate Ry(π/3) to the first qubit (q[0]). After running and viewing the **statevector visualization**, which image correctly represents the resulting quantum state?

**Resulting state (mathematically):**  
|ψ⟩ = √3/2 |000⟩ + 1/2 |001⟩  

**Answer characteristics:**
- Only two non-zero amplitudes: |000⟩ ≈ 0.866, |001⟩ = 0.5  
- Both real and positive  
- All other basis states = 0  

(The correct image shows exactly two bars: tall one at |000⟩ and shorter one at |001⟩, both on the positive real axis.)

## Question 6  
Create a 3-qubit GHZ state: H on q[0] → CNOT 0→1 → CNOT 0→2.  
Visualize the density matrix using **state city** representation. Which image correctly shows the real and imaginary components?

**State:**  
|GHZ⟩ = 1/√2 (|000⟩ + |111⟩)  

**Density matrix – Real part:**  
Non-zero entries at:  
(000,000), (111,111), (000,111), (111,000) — each 0.5  

**Imaginary part:**  
All zeros  

**Answer:** The image with  
- Four peaks in real part (two diagonal + two symmetric off-diagonal between |000⟩ and |111⟩)  
- Completely flat (zero) imaginary part

## Question 7  
Starting with |ψ⟩ = 1/2 (|00⟩ + |01⟩ + |10⟩ + |11⟩), apply CNOT (control q[0], target q[1]), then H on q[0]. What is the resulting state?

**Final state:**  
|ψ⟩ = 1/√2 (|00⟩ + |01⟩) = |0⟩ ⊗ |+⟩  

**Answer:** 1/√2 (|00⟩ + |01⟩)

## Question 8  
Apply Ry(2π/3) to q[0] (starting from |000⟩), then CNOT control q[0] → target q[1]. What is the resulting state?

**Final state:**  
|ψ⟩ = 1/2 |000⟩ + √3/2 |011⟩  

**Answer:** 1/2 |000⟩ + √3/2 |011⟩

## Question 9  
In quantum teleportation, Bob applies correction gates based on Alice’s 2-bit message.  
Bob’s corrections in four trials: (I,I), (Z,I), (X,I), (XZ,I)  
What are the corresponding messages Alice sent?

- [ ] 00, 01, 10, 11  
- [x] 00, 10, 01, 11  
- [ ] 11, 10, 01, 00  
- [ ] 10, 00, 11, 01  

**Mapping reminder:**  
00 → I  
01 → X  
10 → Z  
11 → XZ  

**Answer:** 00, 10, 01, 11

## Question 10  
Alice and Bob share the entangled state 1/√2 (|01⟩ + |10⟩).  
Alice measures her qubit in the computational basis and obtains |0⟩. What is the state of Bob’s qubit?

- [ ] |0⟩  
- [x] |1⟩  
- [ ] 1/√2 (|0⟩ + |1⟩)  
- [ ] 1/√2 (|0⟩ − |1⟩)  

**Answer:** |1⟩

---