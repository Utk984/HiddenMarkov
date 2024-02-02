Here is a README for the hidden Markov model code in the provided document:

# Hidden Markov Model Code

This repo contains MATLAB code implementing the Viterbi and Forward algorithms for a hidden Markov model (HMM). It includes examples applying the algorithms to a weather prediction problem and an aircraft pitch monitoring problem.

## Files

- `viterbi.m` - Implements the Viterbi algorithm to find the most likely sequence of hidden states
- `forward.m` - Implements the Forward algorithm to calculate probability of an observation sequence
- `viterbi_call.m` - Example usage for weather prediction problem 
- `forward_call.m` - Example usage for aircraft pitch monitoring 
- `bonus.m` - Implements modified Forward algorithm for bonus question

## Usage 

The main driver scripts are `viterbi_call.m` and `forward_call.m`. They define the HMM parameters and observation sequences and call the Viterbi/Forward functions.

To run an example:

```matlab
>> viterbi_call
``` 

This will print out the most likely state sequence and probability for the weather example.

The other files contain helper functions for Viterbi/Forward algorithms.

## Problem Overview

The code solves two types of problems:

- Predicting hidden weather states based on observations of a person's activities 
- Predicting hidden aircraft control law states based on pitch measurements

The Viterbi algorithm finds the most likely sequence of hidden states. The Forward algorithm calculates total probability of an observation sequence.
