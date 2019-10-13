# How to write a github issue

## Issues for discussion, new ideas, exchange of thoughts

1. First, describe your motivation -- why are you proposing something? what's wrong with existing solution?
2. Intuition behand your proposed solution -- why do you think it will work?
3. Feasibility of your solution -- how long does it take to implement? Is it simple enough as a proof of concept that can be further developed into more sophisticated solutions?

## Issues for bug reports

This is when you think you know what you are doing, but your code does not work as expected -- so already you can see there are two elements in this: your expectation, and the actual wrong behavior. Additionally since you know (at least partially) what you are doing, you must 
have already done something very specific that resulted in the bad behavior; and you even made some attempts to fix it.
So it is also very important you show us exactly what you've done, as specific as possible -- never just say something like this: "I ran the code but got an error message. What should I do?". No one can respond to that!

But before you report the bug, please at least try to diagnose and fix it first. At least, Google around and have some idea what might be wrong, before you open a ticket.

[It would be very help if you provide some minimal working example (MWE)](https://testlio.com/blog/the-ideal-bug-report/) when you report a bug to others.

More formally, we require the following minimal template to report a bug:

```
## Issue description


## What's the expected result?

-


## What's the actual result?

-

## Steps to reproduce the issue

1.  
2. 
3. 

(zip and drag to upload a minimal test data-set used to reproduce the issue)

## What do I think is the problem?

Guess or suggest something, or say "I do not know" if you really do not have an idea.

## What did I do in my own attempt to fixing the issue?

### Attempt 1

According to [this article]() I found line, I tried .... (describe what you tried), but it still failed ... (describe how it failed)

### Attempt 2

....

## Additional details / screenshot / links

- ![Screenshot]()
-
```