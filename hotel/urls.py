from django.conf.urls import patterns, url, include

urlpatterns = patterns('hotel.views',
    url(r'^$','index', name = 'index'),
    
)