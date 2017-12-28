.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$14;
.super Ljava/lang/Thread;
.source "AnzhiUcenterInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->startNextDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

.field private final synthetic val$run:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$14;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    iput-object p2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$14;->val$run:Ljava/lang/Runnable;

    .line 329
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$14;->val$run:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 333
    return-void
.end method
