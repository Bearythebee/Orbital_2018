from django.shortcuts import render
from django.views import generic
from .models import Show
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
    total = zip(ctr, fullcast, roles)
    id = pk
    rating = show.rating
    pic = show.display

    if pk == "100":
        next_id = "1"
    else:
        next_id = str(int(pk) + 1)

    context = {
        'tvshow': show,
        'total': total,
        'id': id,
        'rating': rating,
        'next_id': next_id,
        'picture': pic,
    }
    return render(request, 'catalog/detail.html', context)
