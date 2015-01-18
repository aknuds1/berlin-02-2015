Blit s => NRev r => dac;
.5 => s.gain;
.125 => r.mix;

[55.0, 61.74, 65.41, 73.42, 82.41, 87.31, 98.0] @=> float hi[];
[1, 2, 4, 8, 16] @=> int mult [];

// infinite time loop
while( true )
{
    hi[Math.random2(0, hi.cap()-1)] * mult[Math.random2(0, mult.cap()-1)] => s.freq;

    Math.random2(1, 5) => s.harmonics;
    158::ms => now;
}
