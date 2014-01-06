from django.shortcuts import render,render_to_response,get_object_or_404
from django.template.context import RequestContext
from django.http import HttpResponse,HttpResponseRedirect

from hotel.models import cliente, tipoHabitacion, habitacion, reservacion

# Create your views here.

def indexAdmin(request):
    template ='index_admin.html'
    return render_to_response(template, context_instance = RequestContext(request,locals()))

def inicioAdmin(request):
    template ='inicio_admin.html'
    return render_to_response(template, context_instance = RequestContext(request,locals()))

def listaClientesAdmin(request):
    template ='clientes_admin.html'
    return render_to_response(template, context_instance = RequestContext(request,locals()))

def listaHabitacionesAdmin(request):
    template ='habitaciones_admin.html'
    return render_to_response(template, context_instance = RequestContext(request,locals()))

def listaReservacionesAdmin(request):
    template ='reservaciones_admin.html'
    return render_to_response(template, context_instance = RequestContext(request,locals()))
