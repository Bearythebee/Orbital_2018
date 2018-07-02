from django import forms
from django.forms import ModelForm, Textarea
from review.models import ShowReview

class ShowReviewForm(ModelForm):
    class Meta:
        model = ShowReview
        fields = ['username','review']
        widgets = {
            'review': Textarea(attrs={'cols': 80, 'rows': 5, 'placeholder': "Enter review here..."})
        }