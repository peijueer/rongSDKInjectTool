.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$10;
.super Ljava/lang/Object;
.source "AnzhiUcenterInner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->startPush(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$10;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    iput-object p2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$10;->val$handler:Landroid/os/Handler;

    .line 155
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

    .line 158
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$10;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v1, "startPush"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v5

    const-class v3, Landroid/os/Handler;

    aput-object v3, v2, v6

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$10;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    aput-object v4, v3, v5

    .line 159
    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$10;->val$handler:Landroid/os/Handler;

    aput-object v4, v3, v6

    .line 158
    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method
