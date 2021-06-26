
function [product carry] = multiplier(mpc, mpl)

	lenmpc = length(mpc);
	lenmpl = length(mpl);
	
	res = 2 * lenmpc;
	partialproduct = zeros(lenmpl, res);
	
	for i = 1 : lenmpl
		if (mpl(lenmpl + 1 - i) == 1)
			startbit = (res + 2 - lenmpc - i);
			endbit = res + 1 - i;
			partialproduct(i, startbit:endbit) = mpc(1, :);
		endif
	endfor
	
	product = zeros(1, size(partialproduct, 2));
	for i = 1 : size(partialproduct, 1)
		[product carry] = adder(partialproduct(i, :), product);
	endfor
	
	partialproduct
	
endfunction


