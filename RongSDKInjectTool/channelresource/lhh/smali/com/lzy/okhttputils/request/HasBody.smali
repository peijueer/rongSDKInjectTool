.class public interface abstract Lcom/lzy/okhttputils/request/HasBody;
.super Ljava/lang/Object;
.source "HasBody.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addFileParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)TR;"
        }
    .end annotation
.end method

.method public abstract addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;",
            ">;)TR;"
        }
    .end annotation
.end method

.method public abstract params(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract requestBody(Lokhttp3/RequestBody;)Ljava/lang/Object;
    .param p1    # Lokhttp3/RequestBody;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract upBytes([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TR;"
        }
    .end annotation
.end method

.method public abstract upJson(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract upString(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation
.end method
