from django import forms
from django.forms import ModelForm, Textarea, ChoiceField
from review.models import ShowReview


class ShowReviewForm(ModelForm):
    class Meta:
        model = ShowReview
        fields = ['rating', 'review']
        widgets = {
            'rating': forms.RadioSelect,
            'review': Textarea(attrs={'cols': 80, 'rows': 5, 'placeholder': "Enter review here..."})
        }