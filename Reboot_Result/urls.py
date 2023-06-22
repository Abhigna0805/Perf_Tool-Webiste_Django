from django.urls import path 
from django.views.generic import RedirectView
from django.conf import settings
from django.conf.urls.static import static
from . import views

urlpatterns=[
   path('',views.IndOs,name="IndOs"),
   path('main/',views.main,name="main" ),
   path('getFolderContents/',views.getFolderContents,name="getFolderContents" ),
   path('help/',views.help,name="help"),
   path('results/',views.results,name="results"),
   path('builds/',views.builds,name="builds"),
   path('getFileContents/',views.getFileContents,name="getFileContents"),
   path('getSVGContent/',views.getSVGContent,name="getSVGContent"),
   path('favicon.ico', RedirectView.as_view(url='/static/favicon.ico')),
  ] 
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)