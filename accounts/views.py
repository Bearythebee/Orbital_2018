from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import login, logout, authenticate
from .forms import SignUpForm
from django.contrib import messages


# Create your views here.
def signup_view(request):
    # POST request
    if request.method =='POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            user = form.save()
            login(request,user,backend='django.contrib.auth.backends.ModelBackend')
            # login(request,user)
            messages.success(request, "Sign up successful!")
            return redirect('mainpage:index')
        else:
            messages.error(request, "Sign up was unsuccessful, please correct the following errors!")
    else:
        # GET request
        form = SignUpForm()
    return render(request,'accounts/signup.html',{'form':form})


def login_view(request):
    # POST request
    if request.method =='POST':
        form = AuthenticationForm(data = request.POST)
        if form.is_valid():
            #log in the user
            user = form.get_user()
            login(request,user,backend='django.contrib.auth.backends.ModelBackend')
            # login(request,user)
            if 'next' in request.POST:
                messages.success(request, 'Login successful.')
                return redirect(request.POST.get('next'))
            else:
                messages.success(request, 'Login successful.')
                return redirect('mainpage:index')
        else:
            messages.error(request, 'Login unsuccessful. Please correct the following errors and try again!')
            print(form.errors)
    else:
        # GET request
        form = AuthenticationForm()
    return render(request,'accounts/login.html',{'form':form})


def logout_view(request):
    if request.method == 'POST':
        logout(request)
        messages.success(request, 'You have successfully logged out!')
        return redirect('mainpage:index')


def redirect_home(request):
    user = request.user
    return redirect('mainpage:index')