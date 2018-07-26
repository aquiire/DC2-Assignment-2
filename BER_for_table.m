length_of_stream=10000;
random_bit_array=randi([0,1],1,length_of_stream);
Eb_No_ratio = -4:2:12;
noise_var = 0.1;
No=2*0.1;
Eb = No*10.^(Eb_No_ratio/10);
BER_array=zeros(1,length(Eb_No_ratio));
for i=1:1:length(Eb)
    [total_error,Avg_count]=BER(random_bit_array,Eb(i),noise_var);
    BER_array(i)=10*log10(total_error/(Avg_count*length_of_stream));
end