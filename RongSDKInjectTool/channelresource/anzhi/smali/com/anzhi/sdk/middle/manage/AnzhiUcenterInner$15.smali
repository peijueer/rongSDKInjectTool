.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$15;
.super Ljava/lang/Object;
.source "AnzhiUcenterInner.java"

# interfaces
.implements Lcom/anzhi/plugin/loader/OnPluginLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->loadPlugin()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$15;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkLocalPluginSupportVer(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 542
    const/4 v0, 0x1

    return v0
.end method

.method public getLocalPluginFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    const-string v0, "azuc_usercenter"

    return-object v0
.end method

.method public isDebugMode()Z
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method
