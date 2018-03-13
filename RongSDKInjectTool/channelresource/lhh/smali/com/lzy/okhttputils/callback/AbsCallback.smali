.class public abstract Lcom/lzy/okhttputils/callback/AbsCallback;
.super Ljava/lang/Object;
.source "AbsCallback.java"


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
.field public static final CALLBACK_DEFAULT:Lcom/lzy/okhttputils/callback/AbsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/lzy/okhttputils/callback/AbsCallback$1;

    invoke-direct {v0}, Lcom/lzy/okhttputils/callback/AbsCallback$1;-><init>()V

    sput-object v0, Lcom/lzy/okhttputils/callback/AbsCallback;->CALLBACK_DEFAULT:Lcom/lzy/okhttputils/callback/AbsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadProgress(JJFJ)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    return-void
.end method

.method public onBefore(Lcom/lzy/okhttputils/request/BaseRequest;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public onCacheError(Lokhttp3/Call;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onCacheSuccess(Ljava/lang/Object;Lokhttp3/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lokhttp3/Call;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    return-void
.end method

.method public onError(Lokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            ")V"
        }
    .end annotation
.end method

.method public parseNetworkFail(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 54
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

.method public upProgress(JJFJ)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
