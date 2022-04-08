clc
clear all
close all

Nsamples = 10;
SR_count = 16;
Seed = 0;
Skips = 3;

S = LSFR_skip(Nsamples,SR_count,Seed,Skips);
LFSR_VHDL_GEN(SR_count,Seed,Skips);