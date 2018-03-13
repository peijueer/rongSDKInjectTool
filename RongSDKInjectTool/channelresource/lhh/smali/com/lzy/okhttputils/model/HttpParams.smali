.class public Lcom/lzy/okhttputils/model/HttpParams;
.super Ljava/lang/Object;
.source "HttpParams.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;
    }
.end annotation


# static fields
.field public static final IS_REPLACE:Z = true

.field public static final MEDIA_TYPE_JSON:Lokhttp3/MediaType;

.field public static final MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

.field public static final MEDIA_TYPE_STREAM:Lokhttp3/MediaType;

.field private static final serialVersionUID:J = 0x6646db7a7498bbc8L


# instance fields
.field public fileParamsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field public urlParamsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "text/plain;charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttputils/model/HttpParams;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    .line 29
    const-string v0, "application/json;charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttputils/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    .line 30
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttputils/model/HttpParams;->MEDIA_TYPE_STREAM:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0}, Lcom/lzy/okhttputils/model/HttpParams;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-direct {p0}, Lcom/lzy/okhttputils/model/HttpParams;->init()V

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0}, Lcom/lzy/okhttputils/model/HttpParams;->init()V

    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method private guessMimeType(Ljava/lang/String;)Lokhttp3/MediaType;
    .locals 3

    .prologue
    .line 209
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    .line 210
    const-string v1, "#"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-interface {v0, v1}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    .line 213
    const-string v0, "application/octet-stream"

    .line 215
    :cond_0
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    .line 57
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 130
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 131
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 132
    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 205
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 206
    return-void
.end method

.method public put(Lcom/lzy/okhttputils/model/HttpParams;)V
    .locals 2

    .prologue
    .line 60
    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p1, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 62
    :cond_0
    iget-object v0, p1, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 64
    :cond_1
    return-void
.end method

.method public varargs put(Ljava/lang/String;C[Z)V
    .locals 2

    .prologue
    .line 114
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 115
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v1, p3, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public varargs put(Ljava/lang/String;D[Z)V
    .locals 2

    .prologue
    .line 106
    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    .line 107
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v1, p4, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public varargs put(Ljava/lang/String;F[Z)V
    .locals 2

    .prologue
    .line 98
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 99
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v1, p3, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public varargs put(Ljava/lang/String;I[Z)V
    .locals 2

    .prologue
    .line 82
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 83
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v1, p3, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public varargs put(Ljava/lang/String;J[Z)V
    .locals 2

    .prologue
    .line 90
    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    .line 91
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v1, p4, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;)V
    .locals 3

    .prologue
    .line 158
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 159
    iget-object v0, p2, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->file:Ljava/io/File;

    iget-object v1, p2, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->fileName:Ljava/lang/String;

    iget-object v2, p2, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;->contentType:Lokhttp3/MediaType;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V

    .line 161
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0, p3}, Lcom/lzy/okhttputils/model/HttpParams;->guessMimeType(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V

    .line 155
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V
    .locals 2

    .prologue
    .line 164
    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 166
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    new-instance v1, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;

    invoke-direct {v1, p2, p3, p4}, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    return-void
.end method

.method public varargs put(Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 2

    .prologue
    .line 74
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 75
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v1, p3, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public varargs put(Ljava/lang/String;Z[Z)V
    .locals 2

    .prologue
    .line 122
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 123
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v1, p3, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public varargs put(Ljava/util/Map;[Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[Z)V"
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    return-void

    .line 68
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p2}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    goto :goto_0
.end method

.method public putFileParams(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public putFileWrapperParams(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;)V

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method public putUrlParams(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/model/HttpParams;->removeUrl(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/model/HttpParams;->removeFile(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public removeUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 246
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 249
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
