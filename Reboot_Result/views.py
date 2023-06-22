from django.shortcuts import render
from django.http.response import HttpResponse
from django.template import loader
from django.http import JsonResponse
from django.conf import settings
import os
import csv
import markdown

mediaDir = os.path.join(settings.BASE_DIR, 'media/')
mainFiles = os.listdir(mediaDir)

files = []

for file in mainFiles:
    editions = os.listdir(mediaDir + file)
    files.append({"name": file, "editions":editions})

def main(request):
    return render(request,'Reboot_Result/main.html',{'files': files})

def IndOs(request):
    return render(request,'Reboot_Result/IndOs.html',{'files': files})

def help(request):
    context ={}
    return render(request,'Reboot_Result/help.html',context)

def results(request):
    path = request.GET.get('path')
    folder_contents = getContents(path)
    return render(request,'Reboot_Result/results.html',
                  {"folder_content":folder_contents, "path":path, "files":files})

def builds(request):
    path = request.GET.get('path')
    folder_contents = getContents(path)
    release = path.split('/')[0]
    version = path.split('/')[1]
    return render(request,"Reboot_Result/builds.html",
                  {"folder_content":folder_contents, "path":path,
                    "files": files,"release":release,"version":version})

def getContents(path):
    path = mediaDir + path
    folder_content =  os.listdir(path)
    folder_contents = []
    for item in folder_content:
        if os.path.isdir(path + "/" + item):
            file_type = "folder"
            icon = "folder"
        elif item.endswith(".csv"):
            file_type = "csv"
            icon="table"
        elif item.endswith(".txt"):
            file_type = "txt"
            icon = "file-text"
        elif item.endswith(".sh"):
            file_type = "sh"
            icon = "file-text"
        elif item.endswith(".md"):
            file_type = "md"
            icon = "file-text"
        elif item.endswith(".svg"):
            file_type = "svg"
            icon = "picture-o"
        else:
            file_type = "unknown"
            icon = "file"
        folder_contents.append({"file_name":item,
                                "file_type":file_type, "icon": icon})
    return folder_contents

def getFolderContents(request):
    path = request.GET.get('path')
    folder_contents = getContents(path)
    return JsonResponse({"folder_content": folder_contents, "path": path})

def getFileContents(request):
    path = mediaDir + request.GET.get('path')
    type = request.GET.get('type')
    if type == "txt" or type == "sh":
        return getTextContent(path)
    elif type == "svg":
        return getSVGContent(path)
    elif type == "md":
        return getMDContent(path)
    elif type == "csv":
        return getCSVContent(path)
    else:
        return JsonResponse(status=422, data={"error": "Error File Type"})
    
def getSVGContent(path):
    output=open(path,"r",encoding="utf8").read()
    return JsonResponse({"contents":output})

def getCSVContent(path):
    file_ = open(path)
    csvreader = csv.reader(file_)
    output = "<table><thead><tr>"
    headers = next(csvreader)
    for header in headers:
        output += "<th>" + header + "</th>"
    output += "</tr></thead><tbody>"
    for row in csvreader:
        output += "<tr>"
        for i in row:
            output += "<td>" + i + "</td>"
        output += "</tr>"
    output += "</tbody></table>"
    return JsonResponse({"contents":output})

def getTextContent(path):
    f=open(path,"r",encoding="utf8")
    output=f.read().replace("\n","<br>").replace("\t","&nbsp;&nbsp;&nbsp;&nbsp;")
    return JsonResponse({"contents":output})


import re

def getMDContent(path):
    md_file = open(path, "r", encoding="utf8")
    contents = md_file.read()
    md_file.close()

    svg_tag = '<svg>...</svg>' 
    if "![](systemd_analyze_plot.svg)" in contents:
        md_contents = re.sub(r"!\[\]\(systemd_analyze_plot\.svg\)", svg_tag, contents)
        html = markdown.markdown(md_contents,extensions=['markdown.extensions.extra',
                                                   'markdown.extensions.admonition',
                                                   'markdown.extensions.codehilite',
                                                   'markdown.extensions.legacy_attrs',
                                                   'markdown.extensions.legacy_em',
                                                   'markdown.extensions.meta',
                                                   'markdown.extensions.nl2br',
                                                   'markdown.extensions.sane_lists',
                                                   'markdown.extensions.smarty',
                                                   'markdown.extensions.toc',
                                                   'markdown.extensions.wikilinks'])
        return JsonResponse({"contents": html})
       

    html = markdown.markdown(contents, extensions=['markdown.extensions.extra',
                                                   'markdown.extensions.admonition',
                                                   'markdown.extensions.codehilite',
                                                   'markdown.extensions.legacy_attrs',
                                                   'markdown.extensions.legacy_em',
                                                   'markdown.extensions.meta',
                                                   'markdown.extensions.nl2br',
                                                   'markdown.extensions.sane_lists',
                                                   'markdown.extensions.smarty',
                                                   'markdown.extensions.toc',
                                                   'markdown.extensions.wikilinks'])
    return JsonResponse({"contents": html})
