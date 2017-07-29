(
var bitcount = { arg n;
	var count = 0;
	32.do {
		if (n % 2 == 1) {
			count = count + 1;
		};
		n = n >> 1;
	};
	count;
};
)
