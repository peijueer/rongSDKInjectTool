.class public Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
.super Ljava/lang/Object;
.source "InitResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParamsBean"
.end annotation


# instance fields
.field private appkey:Ljava/lang/String;

.field private secret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;->appkey:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;->secret:Ljava/lang/String;

    .line 133
    return-void
.end method
