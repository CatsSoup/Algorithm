extends Node2D

#사용하고 싶은 알고리즘의 함수를 레디 안에 집어넣고 테스트 할 것.
#사용하고 싶은 알고리즘 함수 "위"에 그와 관련된 변수나 상수가 존재함.
#런 타임중에 확인 하고 싶다면 중간에 breakpoint를 써서 확인 할 것.

func _ready():
	Selection_Sort()

#================================== 정렬 알고리즘==============================

#==
var Selection_Sort_Array = [4,5,1,9,8,-1,7,3,2,0,6,2,2,3,4,4,2,8,6,12,1,34]
var Min_reslut
var Max_reslut
var Sort_reslut
var Selection_Sort_Copy = []

func Selection_Sort(): #선택 정렬 알고리즘(중복 가능, 음수 가능)
	for number in Selection_Sort_Array.size():
		Selection_Sort_Copy = Selection_Sort_Array[number]
		Min_reslut = Selection_Sort_Array[number]
		Max_reslut = Selection_Sort_Array[number]
		Sort_reslut = number
		
		for sort in range(number,Selection_Sort_Array.size()):
			if Min_reslut > Selection_Sort_Array[sort]:
				
				Max_reslut = Selection_Sort_Array[sort]
				Min_reslut = Selection_Sort_Array[sort]
				Sort_reslut = sort
						
		#sort가 number의 x번째 일때 배열의 크기 만큼 전부 훑어봄.
		Selection_Sort_Array[number] = Max_reslut
		Selection_Sort_Array[Sort_reslut] = Selection_Sort_Copy
	breakpoint
#==
