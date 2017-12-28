.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$6;
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
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$6;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 833
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$6;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$0(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$6;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$0(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$6;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v1, "removePop"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v6

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$6;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$0(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/app/Activity;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p0, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
