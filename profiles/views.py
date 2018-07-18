from django.shortcuts import render, redirect
from review.models import ShowReview

from django.contrib import messages
from django.contrib.auth import update_session_auth_hash
from django.contrib.auth.forms import PasswordChangeForm


def reviews(request):
    owner_name = request.user.username
    review_list = ShowReview.objects.filter(username = owner_name)

    if review_list.count() == 0:
        review_list = None

    if request.method == 'POST':
        form = PasswordChangeForm(request.user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)  # Important!
            messages.success(request, 'Your password was successfully updated!')
            return redirect('change_password')
        else:
            messages.error(request, 'Please correct the error below.')
    else:
        form = PasswordChangeForm(request.user)

    context = {
        'reviews': review_list,
        'form': form,
    }

    return render(request, 'profiles/reviews.html', context)


def favourites(request):
    context = {}
    return render(request, 'profiles/fav.html', context)


