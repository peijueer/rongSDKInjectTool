.class public Lcom/lzy/okhttputils/exception/OkHttpException;
.super Ljava/lang/Exception;
.source "OkHttpException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public static INSTANCE(Ljava/lang/String;)Lcom/lzy/okhttputils/exception/OkHttpException;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/lzy/okhttputils/exception/OkHttpException;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/exception/OkHttpException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
