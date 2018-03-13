.class public Lcom/lzy/okhttputils/OkHttpUtils$DefaultHostnameVerifier;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttputils/OkHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultHostnameVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okhttputils/OkHttpUtils;


# direct methods
.method public constructor <init>(Lcom/lzy/okhttputils/OkHttpUtils;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lzy/okhttputils/OkHttpUtils$DefaultHostnameVerifier;->this$0:Lcom/lzy/okhttputils/OkHttpUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method
