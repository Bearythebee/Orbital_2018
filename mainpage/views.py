from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from .models import TVShow
from .forms import BookmarkForm
from django.contrib import messages

# Create your views here.
def index(request):
    actionshows = TVShow.objects.filter(genre='Action')
    romanceshows = TVShow.objects.filter(genre='Romance')
    comedyshows = TVShow.objects.filter(genre='Comedy')
    crimeshows = TVShow.objects.filter(genre='Crime')
    thrillershows = TVShow.objects.filter(genre='Thriller')
    realityshows = TVShow.objects.filter(genre='Reality')

    checkBookmark = False
    modalName = None

    bookmark_list = []

    if request.user.is_authenticated:
        user = request.user
        if request.method == 'POST':
            form = BookmarkForm(request.POST)
            if form.is_valid():
                bookmarkName = form.cleaned_data['bookmark']
                modalName = form.cleaned_data['modalName']

                if user.profile.bookmark == "":
                    user.profile.bookmark = bookmarkName
                else:
                    user.profile.bookmark = user.profile.bookmark + ", " + bookmarkName
                user.save()
                messages.success(request, "Bookmark added.")
                return HttpResponseRedirect(request.path_info)
            else:
                messages.error(request, "Error while adding bookmark.")

        bookmarked = user.profile.bookmark
        bookmark_list = bookmarked.split(", ")

    context = {
        'action': actionshows,
        'romance': romanceshows,
        'comedy': comedyshows,
        'crime': crimeshows,
        'thriller': thrillershows,
        'reality': realityshows,
        'bookmarked': bookmark_list,
        'checkBookmark': checkBookmark,
        'modalName': modalName,
    }

    return render(request,'mainpage/index.html', context)


def showPage(request):
    return HttpResponse("Hello world!")


def ShowDetailView(request, pk):
    try:
        tvshow_id = TVShow.objects.get(pk=pk)
    except TVShow.DoesNotExist:
        raise Http404("Show does not exist")

    return render(
        request,
        'catalog/detail.html',
        {'tvshow': tvshow_id, }
    )