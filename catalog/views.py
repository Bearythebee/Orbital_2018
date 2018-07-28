import json
from django.shortcuts import render
from django.views import generic
from .models import Show , Cluster
from django.db import transaction
from django.contrib.auth.decorators import login_required
from review.models import ShowReview
from mainpage.models import TVShow
from django.contrib.auth.models import User
from review.suggestions import update_clusters2
from django.http import HttpResponse

# Create your views here.

def ShowDetailView(request,pk):
    try:
        show = Show.objects.get(pk=pk)
    except tvshow.DoesNotExist:
        raise Http404("Show does not exist")

    fullcast = show.fullcast.split(", ")
    roles = show.role.split(", ")
    ctr = list(range(1, len(fullcast) + 1))

    if show.genre != 'Reality':
        total = zip(ctr, fullcast, roles)
    else:
        total = zip(ctr, fullcast)
    id = pk
    rating = show.rating

    if pk == "120":
        next_id = "1"
    else:
        next_id = str(int(pk) + 1)

    user = request.user
    bookmark_list = []

    if request.user.is_authenticated:
        owner_name = request.user.username
        # request user reviewed shows
        review_list = ShowReview.objects.filter(username = owner_name)
        user_reviews_show_name = set(map(lambda x: x.name, review_list))

        # get request user cluster name (just the first one right now)
        try:
            user_cluster_name = User.objects.get(username=request.user.username).cluster_set.first().name
        except: # if no cluster has been assigned for a user, update clusters
            update_clusters2()
            user_cluster_name = User.objects.get(username=request.user.username).cluster_set.first().name

        # get usernames for other members of the cluster
        user_cluster_other_members = Cluster.objects.get(name=user_cluster_name).users.exclude(username=request.user.username).all()
        other_members_usernames = set(map(lambda x: x.username, user_cluster_other_members))

        # get reviews by those users, excluding shows reviewed by the request user
        other_users_reviews = ShowReview.objects.filter(username__in=other_members_usernames).exclude(name__in=user_reviews_show_name)
        other_users_reviews_show_name = set(map(lambda x: x.name, other_users_reviews))
        unwatched = TVShow.objects.filter(name__in=other_users_reviews_show_name)[:6]

        bookmarked = user.profile.bookmark
        bookmark_list = bookmarked.split(", ")

        context = {
            'tvshow': show,
            'total': total,
            'id': id,
            'rating': rating,
            'next_id': next_id,
            'shows': unwatched,
            'bookmarked': bookmark_list
        }
        return render(request, 'catalog/detail.html', context)
    else:
        context = {
            'tvshow': show,
            'total': total,
            'id': id,
            'rating': rating,
            'next_id': next_id,
            'bookmarked': bookmark_list
        }
        return render(request, 'catalog/detail.html', context)

def bookmarkView(request, pk):
    if request.user.is_authenticated:
        user = request.user
        if request.method == "POST":
            showId = request.POST.get('bookmark')
            bookmarkName = TVShow.objects.get(id=showId).name
            bookmarkArr = user.profile.bookmark.split(", ")
            bookmark_result = "add"

            response_data = {}

            if bookmarkName in bookmarkArr:
                bookmarkArr.remove(bookmarkName)
                newStr = ", ".join(bookmarkArr)
                user.profile.bookmark = newStr
                bookmark_result = "remove"
            elif user.profile.bookmark == "":
                user.profile.bookmark = bookmarkName
            else:
                user.profile.bookmark = user.profile.bookmark + ", " + bookmarkName
            user.save()

            response_data['result'] = bookmark_result
            response_data['title'] = bookmarkName

            return HttpResponse(
                json.dumps(response_data),
                content_type="application/json"
            )
    else:
        return render(request, 'catalog/detail.html')