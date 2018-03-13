.class public abstract Lcom/lzy/okhttpserver/listener/UploadListener;
.super Ljava/lang/Object;
.source "UploadListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_UPLOAD_LISTENER:Lcom/lzy/okhttpserver/listener/UploadListener;


# instance fields
.field private userTag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/lzy/okhttpserver/listener/UploadListener$1;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/listener/UploadListener$1;-><init>()V

    sput-object v0, Lcom/lzy/okhttpserver/listener/UploadListener;->DEFAULT_UPLOAD_LISTENER:Lcom/lzy/okhttpserver/listener/UploadListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzy/okhttpserver/listener/UploadListener;->userTag:Ljava/lang/Object;

    return-object v0
.end method

.method public onAdd(Lcom/lzy/okhttpserver/upload/UploadInfo;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public abstract onError(Lcom/lzy/okhttpserver/upload/UploadInfo;Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onFinish(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onProgress(Lcom/lzy/okhttpserver/upload/UploadInfo;)V
.end method

.method public onRemove(Lcom/lzy/okhttpserver/upload/UploadInfo;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public abstract parseNetworkResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public setUserTag(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lzy/okhttpserver/listener/UploadListener;->userTag:Ljava/lang/Object;

    .line 45
    return-void
.end method
