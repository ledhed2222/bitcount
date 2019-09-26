#! /usr/bin/env node
const main = () => {
  const raw = process.argv[2]
  if (!raw) {
    console.log('You must enter a number!');
    process.exit(1);
  }

  const arg = parseInt(raw);
  if (isNaN(arg)) {
    console.log(`${raw} is not a number!`);
    process.exit(1);
  }

  console.log(bitcount(arg));
}

const bitcount = (n) => {
	let count = 0;
	for (let i = 0; i < 32; i++) {
		if (n & 1 === 1) {
			count++;
		}
		n = n >> 1;
	}
	return count;
};

main();

