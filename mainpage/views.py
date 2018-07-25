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

    bookmark_list = []

    if request.user.is_authenticated:
        user = request.user
        if request.method == 'POST':
            form = BookmarkForm(request.POST)
            if form.is_valid():
                bookmarkName = form.cleaned_data['bookmark']
                bookmarkArr = user.profile.bookmark.split(", ")

                if bookmarkName in bookmarkArr:
                    bookmarkArr.remove(bookmarkName)
                    newStr = ", ".join(bookmarkArr)
                    user.profile.bookmark = newStr
                    messages.success(request, "Bookmark removed.")
                elif user.profile.bookmark == "":
                    user.profile.bookmark = bookmarkName
                    messages.success(request, "Bookmark added.")
                else:
                    user.profile.bookmark = user.profile.bookmark + ", " + bookmarkName
                    messages.success(request, "Bookmark added.")
                user.save()
                return HttpResponseRedirect(request.path_info)
            else:
                messages.error(request, "There was an error in adding your bookmark.")

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