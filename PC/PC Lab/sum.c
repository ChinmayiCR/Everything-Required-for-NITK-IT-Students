#include<stdio.h>
#include<omp.h>
int main()
{
	float *arr, *Check, serial_sum, sum, partialsum;
	int arr_size, i;

	printf("Enter the size of the arr\n");
	scanf("%d", &arr_size);

	if (arr_size <= 0) {
		printf("arr Size Should Be Of Positive Value ");
		exit(1);
	}
	/* Dynamic Memory Allocation */

	arr = (float *) malloc(sizeof(float) * arr_size);
	Check = (float *) malloc(sizeof(float) * arr_size);

	/* arr Elements Initialization */

	for (i = 0; i < arr_size; i++) {
		arr[i] = i * 5;
		Check[i] = arr[i];
	}

	printf("The arr Elements Are \n");

	for (i = 0; i < arr_size; i++)
		printf("arr[%d]=%f\n", i, arr[i]);

	sum = 0.0;
	partialsum = 0.0;

	/* OpenMP Parallel For Directive And Critical Section */

#pragma omp parallel for shared(sum)
	for (i = 0; i < arr_size; i++) {
#pragma omp critical
		sum = sum + arr[i];

	}

	serial_sum = 0.0;

	/* Serail Calculation */
	for (i = 0; i < arr_size; i++)
		serial_sum = serial_sum + Check[i];


	if (serial_sum == sum)
		printf("\nThe Serial And Parallel Sums Are Equal\n");
	else {
		printf("\nThe Serial And Parallel Sums Are UnEqual\n");
		exit(1);
	}

	/* Freeing Memory */
	free(Check);
	free(arr);

	printf("\nThe SumOfElements Of The arr Using OpenMP Directives Is %f\n", sum);
	printf("\nThe SumOfElements Of The arr By Serial Calculation Is %f\n", serial_sum);
}