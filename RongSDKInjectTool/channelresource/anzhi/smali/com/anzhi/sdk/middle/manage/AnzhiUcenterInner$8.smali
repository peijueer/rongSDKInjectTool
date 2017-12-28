.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$8;
.super Ljava/lang/Object;
.source "AnzhiUcenterInner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;
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
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$8;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 854
    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$8;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$0(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 862
    :goto_0
    return-void

    .line 857
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$8;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$0(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 858
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_SWITCH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 859
    const-string v1, "RELOAD_PLUGIN"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 860
    const-string v1, "EXTRA_SWITCH_ACTIVITY"

    const-string v2, "LOGIN_ACTIVITY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$8;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$0(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
