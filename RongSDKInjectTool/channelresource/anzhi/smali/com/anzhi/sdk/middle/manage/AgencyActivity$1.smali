.class Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;
.super Ljava/lang/Object;
.source "AgencyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AgencyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

.field private final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AgencyActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    iput-object p2, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->val$savedInstanceState:Landroid/os/Bundle;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;)Lcom/anzhi/sdk/middle/manage/AgencyActivity;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->loadPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    new-instance v1, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1$1;

    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {v1, p0, v2}, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1$1;-><init>(Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 125
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    # getter for: Lcom/anzhi/sdk/middle/manage/AgencyActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->access$1(Lcom/anzhi/sdk/middle/manage/AgencyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 137
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    # getter for: Lcom/anzhi/sdk/middle/manage/AgencyActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->access$1(Lcom/anzhi/sdk/middle/manage/AgencyActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 128
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;->this$0:Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    new-instance v1, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1$2;

    invoke-direct {v1, p0}, Lcom/anzhi/sdk/middle/manage/AgencyActivity$1$2;-><init>(Lcom/anzhi/sdk/middle/manage/AgencyActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/anzhi/sdk/middle/manage/AgencyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
