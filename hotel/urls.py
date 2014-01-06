from django.conf.urls import patterns, url, include

urlpatterns = patterns('hotel.views',
    url(r'^$','index', name = 'index'),
    url(r'^habitaciones/$','viewtipoHab', name = 'viewtipoHab'),
    url(r'^ubicacion/$', 'ubicacion' , name = 'ubicacion'),
    url(r'^login/$', 'login' , name = 'login'),
    url(r'^registro/$', 'registro' , name = 'registro'),
)