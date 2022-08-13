from cgitb import text
from django.shortcuts import render, redirect
from .models import Item
from redis import Redis


redis = Redis(host='redis', port=6379)


def home(request):
    if request.method == 'POST':
        item_text = request.POST['item_text']
        Item.objects.create(text=item_text)
    items = Item.objects.all()
    return render(request, 'home.html', {'items': items})