from django.shortcuts import render
from django.http import HttpResponse
from .models import ShowList, ShowReview
from django.urls import reverse
from .forms import ShowReviewForm
from django.http import HttpResponseRedirect

# Create your views here.

def index(request, pk):
    show = ShowList.objects.get(id=pk)
    show_name = show.name
    show_rating = show.rating

    review_list = ShowReview.objects.filter(name=show_name)
    if review_list.count() == 0:
        review_list = None

    form = ShowReviewForm(request.POST)

    if form.is_valid():
        review = form.cleaned_data['review']
        username = form.cleaned_data['username']
        ReviewObj = ShowReview()
        ReviewObj.name = show_name
        ReviewObj.username = username
        ReviewObj.review = review
        ReviewObj.save()
        return HttpResponseRedirect('../review/')

    context ={
        'id': pk,
        'show_name': show_name,
        'reviews': review_list,
        'form': form,
        'show_rating': show_rating,
    }

    return render(request, 'review/review.html', context)