from django.shortcuts import render
from django.views import generic
from .models import Show , Cluster
from django.db import transaction
from django.contrib.auth.decorators import login_required
from review.models import ShowReview
from mainpage.models import TVShow
from django.contrib.auth.models import User
from review.suggestions import update_clusters2

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
        unwatched = TVShow.objects.filter(name__in=other_users_reviews_show_name)

        context = {
            'tvshow': show,
            'total': total,
            'id': id,
            'rating': rating,
            'next_id': next_id,
            'shows': unwatched,
        }
        return render(request, 'catalog/detail.html', context)
    else:
        context = {
            'tvshow': show,
            'total': total,
            'id': id,
            'rating': rating,
            'next_id': next_id,
        }
        return render(request, 'catalog/detail.html', context)
