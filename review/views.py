from django.contrib.auth.models import User
from django.shortcuts import render
from review.models import ShowList, ShowReview
from .forms import ShowReviewForm
from django.http import HttpResponseRedirect
from .suggestions import update_clusters1
from django.contrib import messages


def index(request, pk):
    show = ShowList.objects.get(id=pk)
    show_name = show.name
    show_rating = show.rating

    review_list = ShowReview.objects.filter(name=show_name)
    if review_list.count() == 0:
        review_list = None

    if request.method == 'POST':
        form = ShowReviewForm(request.POST)
        if form.is_valid():
            user = request.user
            rating = form.cleaned_data['rating']
            review = form.cleaned_data['review']

            ReviewObj = ShowReview()
            ReviewObj.name = show_name
            ReviewObj.username = user.username
            ReviewObj.rating = rating
            ReviewObj.review = review
            ReviewObj.save()
            update_clusters1()

            messages.success(request, "Thanks for leaving a review!")
            return HttpResponseRedirect('../review/')
        else:
            messages.error(request, "Please fill in all fields!")

    context ={
        'id': pk,
        'show': show,
        'show_name': show_name,
        'reviews': review_list,
        'show_rating': show_rating,
        'form': ShowReviewForm(request.POST),
    }

    return render(request, 'review/review.html', context)
