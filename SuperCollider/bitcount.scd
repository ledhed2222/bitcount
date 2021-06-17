(
~bitcount = { arg n;
  var bits = 64;
	var count = 0;
	bits.do {
		if (n % 2 == 1) {
			count = count + 1;
		};
		n = n >> 1;
	};
	count;
};
)