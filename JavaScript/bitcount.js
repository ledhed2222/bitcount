var bitcount = function(n) {
	var count = 0;
	for (var i = 0; i < 32; i++) {
		if (n & 1 === 1) {
			count++;
		}
		n = n >> 1;
	}
	return count;
};
