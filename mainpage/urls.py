from django.conf.urls import url
from django.urls import path, include
from . import views

app_name = 'mainpage'

urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^show/(?P<pk>\d+)$',views.ShowDetailView,name='show-detail'),
]