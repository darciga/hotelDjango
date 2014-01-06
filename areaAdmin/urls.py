from django.conf.urls import patterns, url, include

urlpatterns = patterns('areaAdmin.views',
    url(r'^$','indexAdmin', name = 'indexAdmin'),
    url(r'^inicio/$', 'inicioAdmin' , name = 'inicioAdmin'),
    url(r'^clientes/$','listaClientesAdmin', name = 'listaClientesAdmin'),
    url(r'^habitaciones/$', 'listaHabitacionesAdmin' , name = 'listaHabitacionesAdmin'),
    url(r'^reservaciones/$', 'listaReservacionesAdmin' , name = 'listaReservacionesAdmin'),
)