from django.conf.urls import url
from django.urls import path, include
from . import views


urlpatterns = [
	path("", views.user_recommendation_list, name='recommendations'),
]
