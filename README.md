# DEPRECATED

This gem is deprecated;  please use the updated (and more correctly name) [time_value gem](https://github.com/randallreedjr/time-value) instead.

## Time Value of Money calculator

Performs financial calculatins for:
-n (number of periods)
-pv (present value)
-pmt (payment amount)
-fv (future value)

Does not currently solve for interest rate. Only supports annuity due.

Usage
Initialize with values:
    time_value = TimeValue.new(n, i, pv, pmt, fv)
Or set values after initialization:
    time_value = TimeValue.new()
    time_value.n = my_n
    time_value.i = my_i
    time_value.pv = my_pv
    time_value.pmt = my_pmt
    my_fv = time_value.calc_fv()

Remember to follow a convention for signs of values:
-Money being paid should have a negative value (-)
-Money being received should have a positive value (+)
Failing to follow this convention may yield unexpected results