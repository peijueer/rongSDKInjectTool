.class public Lcom/anzhi/sdk/middle/protocol/ExceptionProtocol;
.super Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;
.source "ExceptionProtocol.java"


# static fields
.field public static final EXCEPTION:Ljava/lang/String; = "EXCEPTION"

.field public static final KEY:Ljava/lang/String; = "KEY_EXCEPTION"

.field public static final ROMVERSION:Ljava/lang/String; = "ROMVERSION"


# instance fields
.field private mException:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "exception"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/anzhi/sdk/middle/protocol/ExceptionProtocol;->mException:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public createJsonData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 32
    :try_start_0
    const-string v1, "EXCEPTION"

    iget-object v2, p0, Lcom/anzhi/sdk/middle/protocol/ExceptionProtocol;->mException:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v1, "ROMVERSION"

    invoke-static {}, Lcom/anzhi/sdk/middle/util/SysUtils;->getRomversion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected getkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "KEY_EXCEPTION"

    return-object v0
.end method

.method public onResponse(ILorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "code"    # I
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method
