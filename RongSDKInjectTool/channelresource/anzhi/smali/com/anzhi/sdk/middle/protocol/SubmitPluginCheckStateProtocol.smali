.class public Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;
.super Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;
.source "SubmitPluginCheckStateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "SUBMIT_PLUGIN_CHECK_STATE"

.field private static final NEW_PLUGIN_MD5:Ljava/lang/String; = "NEW_PLUGIN_MD5"

.field private static final NEW_PLUGIN_VER:Ljava/lang/String; = "NEW_PLUGIN_VER"

.field private static final OLD_JAR_VER:Ljava/lang/String; = "OLD_JAR_VER"

.field private static final OLD_PLUGIN_MD5:Ljava/lang/String; = "OLD_PLUGIN_MD5"

.field private static final OLD_PLUGIN_STATE:Ljava/lang/String; = "OLD_PLUGIN_STATE"

.field private static final OLD_PLUGIN_VER:Ljava/lang/String; = "OLD_PLUGIN_VER"


# instance fields
.field private mJarVer:I

.field private mNewPluginMd5:Ljava/lang/String;

.field private mNewPluginVer:I

.field private mOldPluginMd5:Ljava/lang/String;

.field private mOldPluginVer:I

.field private mPluginState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jarVer"    # I
    .param p3, "oldPluginVer"    # I
    .param p4, "oldPluginMd5"    # Ljava/lang/String;
    .param p5, "newPluginVer"    # I
    .param p6, "newPluginMd5"    # Ljava/lang/String;
    .param p7, "pluginState"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;-><init>(Landroid/content/Context;)V

    .line 38
    iput p2, p0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->mJarVer:I

    .line 39
    iput p3, p0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->mOldPluginVer:I

    .line 40
    iput-object p4, p0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->mOldPluginMd5:Ljava/lang/String;

    .line 41
    iput p5, p0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->mNewPluginVer:I

    .line 42
    iput-object p6, p0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->mNewPluginMd5:Ljava/lang/String;

    .line 43
    iput p7, p0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->mPluginState:I

    .line 44
    return-void
.end method


# virtual methods
.method public createJsonData(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    const-string v0, "OLD_JAR_VER"

    iget v1, p0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->mJarVer:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    const-string v0, "OLD_PLUGIN_VER"

    iget v1, p0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->mOldPluginVer:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    const-string v0, "OLD_PLUGIN_MD5"

    iget-object v1, p0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->mOldPluginMd5:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v0, "OLD_PLUGIN_STATE"

    iget v1, p0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->mPluginState:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    const-string v0, "NEW_PLUGIN_VER"

    iget v1, p0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->mNewPluginVer:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    const-string v0, "NEW_PLUGIN_MD5"

    iget-object v1, p0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->mNewPluginMd5:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    return-void
.end method

.method protected getkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "SUBMIT_PLUGIN_CHECK_STATE"

    return-object v0
.end method

.method public onResponse(ILorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "code"    # I
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method
