from hotel.models import cliente
from django.forms import ModelForm
from django import forms
from django.contrib.auth.models import User

class loginForm(forms.Form):
    username = forms.CharField(
        label = 'Nombre de usuario',
        widget = forms.TextInput(
            attrs = {
            'class':'input-block-level',
            'placeholder':'Nombre de usuario',
        }))
    password = forms.CharField(
        label='Password',
        widget = forms.PasswordInput(
            render_value = False,
            attrs = {
            'class':'input-block-level',
            'placeholder':'Password',
        }))
    