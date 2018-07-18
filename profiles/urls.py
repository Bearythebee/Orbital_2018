from django.conf.urls import url
from django.urls import path, include
from . import views

urlpatterns = [
	path("", views.reviews, name='reviews'),
    path("favourites", views.favourites, name='favourites'),
]
