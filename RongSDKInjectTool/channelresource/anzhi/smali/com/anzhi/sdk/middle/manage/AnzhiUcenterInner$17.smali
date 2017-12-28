.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$17;
.super Ljava/lang/Object;
.source "AnzhiUcenterInner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->checkPluginUpdate()I
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
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$17;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$17;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$5(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6e38\u620f\u7528\u6237\u4e2d\u5fc3\u66f4\u65b0\u5b8c\u6bd5\uff0c\u8bf7\u91cd\u65b0\u542f\u52a8\u8be5\u6e38\u620f"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 600
    return-void
.end method
