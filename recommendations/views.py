from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from review.models import ShowReview
from mainpage.models import TVShow

@login_required
def user_recommendation_list(request):
	owner_name = request.user.username
    review_list = ShowReview.objects.filter(username = owner_name)
    user_show_id  = set(map(lambda x: x.name, review_list))
    show_list = TVShow.objects.exclude(name__in=user_show_id)
    return render(request, 'reviews/user_recommendation_list.html', {'username': request.user.username, 'show_list': unwatched})
