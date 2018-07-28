from django.conf.urls import url
from django.urls import path, include
from . import views

urlpatterns = [
	url(r'^show/(?P<pk>\d+)/$',views.ShowDetailView,name='show-detail'),
    url(r'^show/(?P<pk>\d+)/review/', include("review.urls")),
]