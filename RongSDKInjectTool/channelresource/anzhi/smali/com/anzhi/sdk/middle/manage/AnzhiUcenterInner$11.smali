.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;
.super Ljava/lang/Object;
.source "AnzhiUcenterInner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->doloadPlugin()V
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
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    iget-object v0, v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->setReloadPlugin(Ljava/lang/String;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->loadPlugin()Z

    .line 176
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v1, "setAppKey"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mCpInfo:Lcom/anzhi/sdk/middle/manage/CPInfo;
    invoke-static {v4}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$3(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Lcom/anzhi/sdk/middle/manage/CPInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anzhi/sdk/middle/manage/CPInfo;->getAppKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v1, "setAppSecret"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mCpInfo:Lcom/anzhi/sdk/middle/manage/CPInfo;
    invoke-static {v4}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$3(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Lcom/anzhi/sdk/middle/manage/CPInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anzhi/sdk/middle/manage/CPInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v1, "setGameActivity"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$0(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/app/Activity;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mReloadPluginLoginRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$4(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 180
    return-void
.end method
