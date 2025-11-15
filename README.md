# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

Summary - In this lab we learned how to set up two types of clock dividers, one with a ripple counter, and one with module counters.
  The ripple counter was fairly simple and just included three T-flipflops chained together to divide our clock by 8.
  The modulo counter was set up to divide the clock by 12, basically to reach a count of 6. It included wiring together 3 full adders, and 3 D-flipflops, which left the final count in a fourth D-flipflop and reset the rest of the counter.
  Overall, the lab helped show how computers may spread out/slow down their processes to be able to perform more tasks at once without causing issues.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
  The modulo counter does this because the counter toggles the output each time it reaches the desired count. This is because the clock cycle runs with a "Hz" style, counting from high to low, then back to high, meaning it counts twice per single clock cycle.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
  A standard ring counter should not go to all 1s on the first clock cycle as that would mean that the ring counter would just loop on all 1s and nothing would change. However if the initial state was something like 1000, then the 1 would loop over each spot in the ring. This would look like 0001 -> 0010 -> 0100 and so on.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
  This depends on the frequency of the input clock signal. For a 100 MHz crystal oscillator like the basys3 boards we have, the width would need to be 100,000 stages.
