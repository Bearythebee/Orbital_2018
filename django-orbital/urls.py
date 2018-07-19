from django.contrib import admin
from django.conf.urls import url
from django.urls import path, include

urlpatterns = [
    url(r'',include('mainpage.urls')),
    url(r'^admin/', admin.site.urls),
    url(r'^accounts/',include('accounts.urls')),
    url(r'^catalog/',include('catalog.urls')),
    url(r'^review/', include('review.urls')),
    url(r'^profiles/',include('profiles.urls')),
    
]
