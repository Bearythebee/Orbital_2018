from django.shortcuts import render
from django.http import HttpResponse
from .models import TVShow

# Create your views here.
def index(request):
	actionshows = TVShow.objects.filter(genre='Action')[:10]
	romanceshows = TVShow.objects.filter(genre='Romance')[:10]
	comedyshows = TVShow.objects.filter(genre='Comedy')[:10]
	crimeshows = TVShow.objects.filter(genre='Crime')[:10]
	thrillershows = TVShow.objects.filter(genre='Thriller')[:10]
	realityshows = TVShow.objects.filter(genre='Reality')[:10]

	context = {
		'action': actionshows,
		'romance': romanceshows,
		'comedy': comedyshows,
		'crime': crimeshows,
		'thriller': thrillershows,
        'reality': realityshows,
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