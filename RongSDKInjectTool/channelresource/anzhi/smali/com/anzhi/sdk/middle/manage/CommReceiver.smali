.class public Lcom/anzhi/sdk/middle/manage/CommReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CommReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    const-string v1, "startBroadcast"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v5

    .line 19
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method
