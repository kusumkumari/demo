from django.shortcuts import render, HttpResponse

# Create your views here.
# def home(request):
 	# return HttpResponse("Hello")

def home(request):
	return render(request, 'index.html',{"name" : "Kusum"})

