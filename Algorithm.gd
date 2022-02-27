extends Node2D

#사용하고 싶은 알고리즘의 함수를 레디 안에 집어넣고 테스트 할 것.
#사용하고 싶은 알고리즘 함수 "위"에 그와 관련된 변수나 상수가 존재함.
#런 타임중에 확인 하고 싶다면 중간에 breakpoint를 써서 확인 할 것.

func _ready():
	#Quick_Sort()
	Recursive(5, 0)


#================================== 정렬 알고리즘==============================

#==
var Selection_Sort_Array = [4,5,1,9,8,-1,7,3,2,0,6,2,2,3,4,4,2,8,6,12,1,34]
var Min_reslut
var Max_reslut
var Sort_reslut
var Selection_Sort_Copy = []

func Selection_Sort(): #선택 정렬 알고리즘(중복 가능, 음수 가능) <테스트 완료>
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

#==
var Quick_Sort_Array = [1,4,5,8,7,9,2,0,3,6]
#0,9
var Pivot_Right_Index #배열의 제일 끝에서 부터 -1
var Pivot_Left_Index #피벗으로 정한 인덱스의 앞에서 부터 + 1

var Quick_Right
var Quick_Left

var Quick_First_Pivot #최초 피벗
var Quick_Change_Pivot

#중요 키 포인트, 무조건 첫번 째 이후 가장 작은 수는 왼쪽, 가장 큰 수는 왼쪽에 온다.
func Quick_Sort(): #퀵 정렬 알고리즘
	#***"임의로 고른 수를 기준"***으로 왼쪽은 작은 수 오른쪽은 큰수로 분할한다.
	#첫 번째 목표 임의로 고른 수를 기준으로 왼쪽으론 작은 수 오른쪽은 큰 수로 만든다. 
	

	breakpoint
#================================== 정렬 알고리즘==============================

#================================== 재귀 알고리즘==============================

func Recursive(Count, Stack): #재귀 함수
	if Count == 0:
		return
		
	Stack += 1
	Count -= 1
	
	print("스택" + str(Stack))
	yield(get_tree().create_timer(1), "timeout")
	return Recursive(Count, Stack) #기존의 함수 해제와 동시에 재귀.
	
