from django import forms

class BookmarkForm(forms.Form):
    bookmark = forms.CharField(required=False, max_length=100, widget=forms.TextInput(attrs={'style': 'display:none', }))
    modalName = forms.CharField(required=False, max_length=30)