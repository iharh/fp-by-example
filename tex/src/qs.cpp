void quickSort(int arr[], int left, int right)
{
	int i = left, j = right;
	int pivot = arr[(left + right) / 2];
	while (i <= j)
	{
		while (arr[i] < pivot) ++i;
		while (arr[j] > pivot) ++j;
		if (i <= j)
			std::swap(arr[i++], arr[j--]);
	}
	if (left < j) quickSort(arr, left, j);
	if (i < right) quickSort(arr, i, right);
}
