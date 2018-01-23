.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$2;
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
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$2;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 799
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$2;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    const-string v1, "initTextLink"

    invoke-virtual {v0, v1, v2, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    return-void
.end method
