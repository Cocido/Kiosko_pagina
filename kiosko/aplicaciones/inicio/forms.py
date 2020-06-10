from django import forms
from .models import articulo, rubro, persona

class articuloForm(forms.ModelForm):
    class Meta:
        model = articulo
        fields = '__all__'

class PersonaForm(forms.ModelForm):
    class Meta:
        model = persona
        fields = '__all__'
