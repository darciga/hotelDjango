from django.conf.urls import patterns, include, url
#para tomar ROOT_URLCONF = 'hD.urls'
from django.conf import settings

from django.contrib import admin

admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'hD.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    #incluimos las urls de archivo de la aplicacion hotel
    url(r'^',include('hotel.urls')),
    #incluimos las urls de archivo de la aplicacion areaAdmin
    url(r'^hp-admin/',include('areaAdmin.urls')),
    
    url(r'^admin/', include(admin.site.urls)),
)
