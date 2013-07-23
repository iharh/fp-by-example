int my_max(size_t cnt, int values[])
{
	int result = values[0];
	for(size_t i = 1; i < cnt; ++i)
		result = values[i] > result ? values[i] : result;
	return result;
}