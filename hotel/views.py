from django.shortcuts import render_to_response,get_object_or_404,render
from django.template.context import RequestContext
from django.http import HttpResponse,HttpResponseRedirect

# Create your views here.
def index(request):
    template = 'index.html'
    return render_to_response(template)
    
