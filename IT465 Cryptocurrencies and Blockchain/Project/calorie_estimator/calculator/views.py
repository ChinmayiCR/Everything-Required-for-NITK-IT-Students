from django.shortcuts import render
from django.http import HttpResponse
from calculator.calorie import *

events_list = []

transactions = [[0,1],[0,2],[2,3],[0,3],[1,2],[2,1],[3,1],[2,0],[0,1],[2,3]]

blocks = [[[0,1,0,2],[1,0,0,2],[0,1,2,0],[3,0,1,1]], [[1,0,2,1],[0,0,2,3],[0,2,3,0],[1,0,3,1]],[[2,1,1,2],[2,2,2,2],[3,1,1,3],[3,0,1,1]] ]


def indexView(request):
    
    # context = {'fruit_area': fruit_data[0], 'fruit_mass': fruit_data[1], 'fruit_volume': fruit_data[2], 'fruit_calories': fruit_data[3] }
    return render(request,'base.html')

def modelView(request):
    
    if request.method == 'POST':
        st1=request.POST['your_name1']
        st2=request.POST['your_name2']
        print(st1)
        print(st2)
        curr_event = [int(st1),int(st2)] 
        events_list.append(curr_event)
        print('***',events_list,'****')
        return render(request,'base.html')
    else:
        combined_model,log_string ,event_string= views(events_list)
        print(combined_model)
        blocks.append(combined_model)
        print(blocks)
        print(blocks[3])
        context = {"combined_model" : combined_model, "log_string":log_string, "blocks": blocks, "event_string": event_string}
        return render(request,'model.html',context)



def combine_models(local_models,st_flg):
	# print("local models:\n");
	# for l in local_models:
	# 	for i in range(4):
	# 		for j in range(4):
	# 			print(l[i][j],end=" ")
	# 		print('\n')
	pc = 4 #pc percentage is 40%
	mg = [ [0 for i in range(4)] for j in range(4)]
	log_string = ""
	for i in range(4):
		for j in range(4):
			transition = 0
			for ml in local_models:
				if ml[i][j]>0:
					transition+=1
			if i==2 and j==3:
				print("transition:",transition)
			if transition>=pc:
				mg[i][j]+=1
				log_string+="\nState Transition "+str(i)+":"+str(j)+" verified by "+str(transition)+"0%percent devices";
			else:
				if st_flg[i][j]>0:
					log_string+="\n!!!!!!!!!! Anomaly detected !!!!!!!!!! for state transition "+str(i)+":"+str(j);

	return mg,log_string


def blockchain(state_transitions):
    print('@@@', state_transitions , '@@@')
    local_models = []
    st_flg = [[0 for i in range(4)] for j in range(4)]
    for st in state_transitions:
        ml = [[0 for i in range(4)] for j in range(4)]
        ml[st[0]][st[1]]=1
        st_flg[st[0]][st[1]]=1
        local_models.append(ml)
    log_string = "\nStarted model verification and blockchain broadcast."
	
	# print("local models:\n");
	# for l in local_models:
	# 	for i in range(4):
	# 		for j in range(4):
	# 			print(l[i][j],end=" ")
	# 		print('\n')

    a,b = combine_models(local_models,st_flg)
    log_string+=b
    return a,b

def views(st):
    st = st[-10:]
    event_string = ""
    for event in st:
        es = "\nState Transition: "+str(event[0])+" --> "+str(event[1])
        event_string+=es
    # st = [[2,3],[1,2],[2,3],[2,3],[1,2],[2,3],[2,3],[1,2],[2,3],[1,2]]
    combined_model,log_string = blockchain(st)
    print(combined_model)
    log_string+="\nCombined model execution completed successfully."
    print(log_string)
    return combined_model,log_string,event_string

