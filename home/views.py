from django.shortcuts import render


def home(request):
    context = {
        'title': 'Home - Stellar'
    }
    return render(request, 'home/index.html', context)