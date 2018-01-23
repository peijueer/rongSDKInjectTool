.class Lcom/anzhi/sdk/middle/update/PluginUpdate$1;
.super Ljava/lang/Thread;
.source "PluginUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/update/PluginUpdate;->submitPluginDownState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/update/PluginUpdate;

.field private final synthetic val$pluginInvalid:I


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/update/PluginUpdate;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate$1;->this$0:Lcom/anzhi/sdk/middle/update/PluginUpdate;

    iput p2, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate$1;->val$pluginInvalid:I

    .line 253
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 256
    new-instance v0, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate$1;->this$0:Lcom/anzhi/sdk/middle/update/PluginUpdate;

    # getter for: Lcom/anzhi/sdk/middle/update/PluginUpdate;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->access$0(Lcom/anzhi/sdk/middle/update/PluginUpdate;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate$1;->this$0:Lcom/anzhi/sdk/middle/update/PluginUpdate;

    # getter for: Lcom/anzhi/sdk/middle/update/PluginUpdate;->mJarVc:I
    invoke-static {v2}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->access$1(Lcom/anzhi/sdk/middle/update/PluginUpdate;)I

    move-result v2

    iget-object v3, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate$1;->this$0:Lcom/anzhi/sdk/middle/update/PluginUpdate;

    # getter for: Lcom/anzhi/sdk/middle/update/PluginUpdate;->mOldPluginVc:I
    invoke-static {v3}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->access$2(Lcom/anzhi/sdk/middle/update/PluginUpdate;)I

    move-result v3

    iget-object v4, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate$1;->this$0:Lcom/anzhi/sdk/middle/update/PluginUpdate;

    # getter for: Lcom/anzhi/sdk/middle/update/PluginUpdate;->mOldPluginMd5:Ljava/lang/String;
    invoke-static {v4}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->access$3(Lcom/anzhi/sdk/middle/update/PluginUpdate;)Ljava/lang/String;

    move-result-object v4

    .line 257
    iget-object v5, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate$1;->this$0:Lcom/anzhi/sdk/middle/update/PluginUpdate;

    # getter for: Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;
    invoke-static {v5}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->access$4(Lcom/anzhi/sdk/middle/update/PluginUpdate;)Lcom/anzhi/sdk/middle/update/UpdateInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getVersionCode()I

    move-result v5

    iget-object v6, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate$1;->this$0:Lcom/anzhi/sdk/middle/update/PluginUpdate;

    # getter for: Lcom/anzhi/sdk/middle/update/PluginUpdate;->mUpdateInfo:Lcom/anzhi/sdk/middle/update/UpdateInfo;
    invoke-static {v6}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->access$4(Lcom/anzhi/sdk/middle/update/PluginUpdate;)Lcom/anzhi/sdk/middle/update/UpdateInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->getMD5()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/anzhi/sdk/middle/update/PluginUpdate$1;->val$pluginInvalid:I

    .line 256
    invoke-direct/range {v0 .. v7}, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;-><init>(Landroid/content/Context;IILjava/lang/String;ILjava/lang/String;I)V

    .line 257
    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/protocol/SubmitPluginCheckStateProtocol;->request()I

    .line 258
    return-void
.end method
