from django.conf.urls import patterns, include, url
#para tomar ROOT_URLCONF = 'hD.urls'
from django.conf import settings

from django.contrib import admin

admin.autodiscover()

urlpatterns = patterns('',
    url(r'^',include('hotel.urls')),
    #incluimos las urls de archivo de la aplicacion areaAdmin
    url(r'^hp-admin/',include('areaAdmin.urls')),
    url(r'^admin/', include(admin.site.urls)),
)

if settings.DEBUG:
        urlpatterns += patterns('',
             url(r'^uploads/(?P<path>.*)$', 'django.views.static.serve', {
            'document_root': settings.MEDIA_ROOT}))
