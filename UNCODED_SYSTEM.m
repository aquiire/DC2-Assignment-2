function error_amount=UNCODED_SYSTEM(random_bit_array,Eb,noise_var)
length_stream=length(random_bit_array);
BPSK_signal=2*random_bit_array-1;
transmitted_signal=sqrt(Eb)*BPSK_signal;
%%%%%%%%%%%%%%%%%Noisy signal%%%%%%%%%%%%%%%%%%%%%%%%%%%

noise_value=wgn(1,length_stream,10*log10(noise_var));
noisy_stream=transmitted_signal+noise_value;
%%%%%%%%%%%%%%%%%%Error calculation%%%%%%%%%%%%%%%%%%%%%
received_demodulated_signal=noisy_stream>=0;
error_amount=sum(random_bit_array ~= received_demodulated_signal);
end