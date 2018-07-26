function [total_error,Avg_count]=BER(random_bit_array,Eb,noise_var)
total_error=0;
Avg_count=0;
while total_error < 100
    error=UNCODED_SYSTEM(random_bit_array,Eb,noise_var);
    total_error=total_error+error;
    Avg_count=Avg_count+1;
end
end