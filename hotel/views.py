from hotel.models import cliente, tipoHabitacion, habitacion, reservacion
from django.shortcuts import render_to_response,get_object_or_404,render
from django.template.context import RequestContext
from django.http import HttpResponse,HttpResponseRedirect

from django.http import HttpResponse,HttpResponseRedirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.contrib.auth import authenticate
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
from hotel.forms import loginForm


# Create your views here.
def index(request):
    template = 'index.html'
    return render_to_response(template)

def viewtipoHab(request):
    #sacamos los tipo de habitaciones disponibles
    tipohabs = tipoHabitacion.objects.all()
    template = 'habitaciones.html'
    return render_to_response(template, context_instance = RequestContext(request,locals()))

def ubicacion(request):
    template = 'ubicacion.html'
    return render_to_response(template)

def login(request):
    template ='login.html'
    return render_to_response(template, context_instance = RequestContext(request,locals()))

def registro(request):
    template ='registro.html'
    return render_to_response(template, context_instance = RequestContext(request,locals()))
    
    
