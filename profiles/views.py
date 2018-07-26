from django.shortcuts import render, redirect
from review.models import ShowReview
from mainpage.models import TVShow
from django.contrib import messages
from django.contrib.auth import update_session_auth_hash
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

@login_required
def reviews(request):
    owner_name = request.user.username
    review_list = ShowReview.objects.filter(username = owner_name)
    checkError = False

    if review_list.count() == 0:
        review_list = None

    if request.method == 'POST':
        form = PasswordChangeForm(request.user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)  # Important!
            messages.success(request, 'Your password was successfully updated!')
            return redirect('../profiles')
        else:
            checkError = True
    else:
        form = PasswordChangeForm(request.user)

    context = {
        'reviews': review_list,
        'form': form,
        'checkError': checkError,
    }

    return render(request, 'profiles/reviews.html', context)


@login_required
def bookmarks(request):
    user = request.user
    bookmarked = user.profile.bookmark
    bookmark_list = bookmarked.split(", ")
    checkError = False

    show_list = []

    if len(bookmarked) == 0:
        show_list = None
    else:
        for i in bookmark_list:
            show_list.append(TVShow.objects.get(name=i))

    if request.method == 'POST':
        form = PasswordChangeForm(request.user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)  # Important!
            messages.success(request, 'Your password was successfully updated!')
            return redirect('../profiles/bookmarks')
        else:
            checkError = True
    else:
        form = PasswordChangeForm(request.user)

    page = request.GET.get('page', 1)

    paginator = Paginator(show_list, 3)
    try:
        shows = paginator.page(page)
    except PageNotAnInteger:
        shows = paginator.page(1)
    except EmptyPage:
        shows = paginator.page(paginator.num_pages)

    context = {
        'bookmarks': bookmark_list,
        'shows': shows,
        'form': form,
        'checkError': checkError,
    }

    return render(request, 'profiles/bookmarks.html', context)


