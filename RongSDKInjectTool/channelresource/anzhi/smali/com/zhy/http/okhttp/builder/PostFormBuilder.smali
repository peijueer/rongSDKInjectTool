.class public Lcom/zhy/http/okhttp/builder/PostFormBuilder;
.super Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
.source "PostFormBuilder.java"

# interfaces
.implements Lcom/zhy/http/okhttp/builder/HasParamsable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder",
        "<",
        "Lcom/zhy/http/okhttp/builder/PostFormBuilder;",
        ">;",
        "Lcom/zhy/http/okhttp/builder/HasParamsable;"
    }
.end annotation


# instance fields
.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->files:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public addFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/zhy/http/okhttp/builder/PostFormBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->files:Ljava/util/List;

    new-instance v1, Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;

    invoke-direct {v1, p1, p2, p3}, Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-object p0
.end method

.method public bridge synthetic addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/PostFormBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->params:Ljava/util/Map;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-object p0
.end method

.method public build()Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 7

    .prologue
    .line 22
    new-instance v0, Lcom/zhy/http/okhttp/request/PostFormRequest;

    iget-object v1, p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->tag:Ljava/lang/Object;

    iget-object v3, p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->params:Ljava/util/Map;

    iget-object v4, p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->headers:Ljava/util/Map;

    iget-object v5, p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->files:Ljava/util/List;

    iget v6, p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->id:I

    invoke-direct/range {v0 .. v6}, Lcom/zhy/http/okhttp/request/PostFormRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;I)V

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/request/PostFormRequest;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    return-object v0
.end method

.method public files(Ljava/lang/String;Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/PostFormBuilder;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Lcom/zhy/http/okhttp/builder/PostFormBuilder;"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    .local v0, "filename":Ljava/lang/String;
    iget-object v3, p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->files:Ljava/util/List;

    new-instance v4, Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {v4, p1, v0, v2}, Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    .end local v0    # "filename":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    move-result-object v0

    return-object v0
.end method

.method public params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/PostFormBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zhy/http/okhttp/builder/PostFormBuilder;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;->params:Ljava/util/Map;

    .line 70
    return-object p0
.end method
