.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13$1;
.super Ljava/lang/Object;
.source "AnzhiUcenterInner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13$1;->this$1:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13$1;->this$1:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->access$0(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;)Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    move-result-object v0

    # invokes: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->checkPluginUpdate()I
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$9(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)I

    .line 313
    return-void
.end method
