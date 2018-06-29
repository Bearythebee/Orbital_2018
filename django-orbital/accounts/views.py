from django.shortcuts import render , redirect
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import login ,logout

# Create your views here.
def signup_view(request):
	# POST request
	if request.method =='POST':
		form = UserCreationForm(request.POST)
		if form.is_valid():
			user = form.save() #from.save returns user to us
			login(request,user)			
			return redirect('mainpage:index')
	else:
	# GET request
		form = UserCreationForm()
	return render(request,'accounts/signup.html',{'form':form})


def login_view(request):
	# POST request
	if request.method =='POST':
		form = AuthenticationForm(data = request.POST)
		if form.is_valid():
			#log in the user
			user = form.get_user() #retrieve user
			login(request,user)
			if 'next' in request.POST:                
				return redirect(request.POST.get('next'))
			else:
				return redirect('mainpage:index')
	else:
	# GET request
		form = AuthenticationForm()
	return render(request,'accounts/login.html',{'form':form})

def logout_view(request):
	if request.method == 'POST':
		logout(request)
		return redirect('mainpage:index')