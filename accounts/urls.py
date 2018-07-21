from django.conf.urls import url, include
from . import views

urlpatterns = [
	url(r'^signup/$',views.signup_view,name='signup'),
	url(r'^login/$',views.login_view,name='login'),
	url(r'^logout/$',views.logout_view,name='logout'),
	url(r'^oauth/', include('social_django.urls', namespace='social')),
	url(r'^profile/$',views.redirect_home,name='home'),
]