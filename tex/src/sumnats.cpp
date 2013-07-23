unsigned sumnats(unsigned n)
{
	unsigned result = 0;
	for (unsigned i = 0; i < n; ++i)
		result += i*i;
	return result;
}
