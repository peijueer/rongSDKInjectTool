.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$9;
.super Ljava/lang/Object;
.source "AnzhiUcenterInner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->init(Landroid/content/Context;Landroid/os/Handler;)V
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
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$9;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$9;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->initPluginLog()V
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$1(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    .line 144
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$9;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$9;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->loadPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$9;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v1, "pluginInit"

    invoke-virtual {v0, v1, v2, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$9;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->startPushService()V
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$2(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    .line 150
    :cond_0
    return-void
.end method
